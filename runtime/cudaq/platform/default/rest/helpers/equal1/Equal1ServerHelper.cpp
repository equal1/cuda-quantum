/*******************************************************************************
 * Copyright (c) 2022 - 2024 NVIDIA Corporation & Affiliates.                  *
 * All rights reserved.                                                        *
 *                                                                             *
 * This source code and the accompanying materials are made available under    *
 * the terms of the Apache License 2.0 which accompanies this distribution.    *
 ******************************************************************************/
#include "common/Logger.h"
#include "common/MeasureCounts.h"
#include "common/RestClient.h"
#include "common/ServerHelper.h"
#include "cudaq/utils/cudaq_utils.h"

#include "nlohmann/json.hpp"

#include <fstream>
#include <iostream>
#include <llvm/ADT/STLExtras.h>
#include <llvm/ADT/StringRef.h>
#include <llvm/Support/Process.h>
#include <optional>
#include <regex>
#include <string>
#include <tuple>
#include <unordered_map>
#include <unordered_set>
#include <vector>

namespace cudaq {

class Equal1ServerHelper : public ServerHelper {
  static constexpr const llvm::StringLiteral DEFAULT_URL = "http://localhost/";

public:

  const std::string name() const override {return "equal1";}

  void initialize(BackendConfig config) override;

  RestHeaders getHeaders() override;

  ServerJobPayload createJob(std::vector<KernelExecution> &circuitNodes) override;

  std::string extractJobId(ServerMessage &postResponse) override;

  std::string constructGetJobPath(ServerMessage &postResponse) override;

  std::string constructGetJobPath(std::string &jobId) override;

  bool jobIsDone(ServerMessage &getJobResponse) override;

  cudaq::sample_result processResults(ServerMessage &postJobResponse, std::string &jobId) override;

private:
  std::string equal1ServerURL;

  inline std::optional<std::string> getEnv(llvm::StringRef envVar) {
    const char* val = std::getenv(envVar.data());
    if(!val)
      return std::nullopt;
    return std::string(val);
  }
};

void Equal1ServerHelper::initialize(BackendConfig config) {
  cudaq::debug("{}ServerHelper::initialize", name());

  equal1ServerURL = getEnv("EQUAL1_SERVER_URL").value_or(DEFAULT_URL.str());

  return;
}

RestHeaders Equal1ServerHelper::getHeaders() {
  cudaq::debug("{}ServerHelper::getHeaders", name());

  RestHeaders headers;
  headers["Content-Type"] = "application/json";
  headers["Connection"] = "keep-alive";
  headers["Accept"] = "*/*";
  // Return the headers
  return headers;
}

ServerJobPayload Equal1ServerHelper::createJob(std::vector<KernelExecution> &circuitNodes) {
  cudaq::debug("{}ServerHelper::createJob", name());

  assert(circuitNodes.size() == 1 && "Currently only supporting one message");

  std::vector<ServerMessage> messages;
  for(const auto& code : circuitNodes) {
    ServerMessage m;
    m["target"] = name();
    m["format"] = "QIR";
    m["program"] = code.code;
    m["programName"] = code.name;
    m["shots"] = "1000";

    messages.push_back(m);
  }

  return std::make_tuple(equal1ServerURL + "jobs", getHeaders(), messages);
}

std::string Equal1ServerHelper::extractJobId(ServerMessage &postResponse) {
  cudaq::debug("{}ServerHelper::extractJobId", name());

  std::string jobToken =
      postResponse["job_id"]
          .get<std::string>();
  return jobToken;
}

std::string Equal1ServerHelper::constructGetJobPath(ServerMessage &postResponse) {
  cudaq::debug("{}ServerHelper::extractJobId", name());
  return equal1ServerURL + "jobs/" + extractJobId(postResponse);
}

std::string Equal1ServerHelper::constructGetJobPath(std::string &jobId) {
  cudaq::debug("{}ServerHelper::extractJobId", name());
  return equal1ServerURL + "jobs/" + jobId;
}

bool Equal1ServerHelper::jobIsDone(ServerMessage &getJobResponse) {
  auto status = getJobResponse["status"]
                  .get<std::string>(); // All job get and post responses at an
                                         // array of [resdata, httpstatuscode]
  if (status == "failed") {
    std::string msg = "";
    if (getJobResponse.count("error"))
      msg = getJobResponse["error"]["text"].get<std::string>();
    throw std::runtime_error("Job failed to execute msg = [" + msg + "]");
  } else if (status == "waiting") {
    return false;
  } else if (status == "executing") {
    return false;
  } else
    return status == "done";
}


cudaq::sample_result Equal1ServerHelper::processResults(ServerMessage &getJobResponse, std::string &jobId) {
  cudaq::info("postJobResponse: {}", name());

  auto result = getJobResponse["results"].get<std::vector<std::size_t>>();
  auto sample = cudaq::sample_result();
  sample.deserialize(result);
  return sample;
};

} // namespace cudaq

// Register the Equal1 server helper in the CUDA-Q server helper factory
CUDAQ_REGISTER_TYPE(cudaq::ServerHelper, cudaq::Equal1ServerHelper, equal1)