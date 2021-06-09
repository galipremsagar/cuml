/*
 * Copyright (c) 2018-2021, NVIDIA CORPORATION.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#pragma once

#include <raft/distance/distance.cuh>
#include <raft/handle.hpp>

namespace ML {
namespace Metrics {

template <typename math_t, raft::distance::DistanceType distance_type>
double trustworthiness_score(const raft::handle_t& h, const math_t* X,
                             math_t* X_embedded, int n, int m, int d,
                             int n_neighbors, int batchSize = 512);
}
}  // namespace ML
