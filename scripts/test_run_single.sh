#!/bin/bash
# Copyright 2019 Google LLC, Andrew Hines
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -x

WORK_DIR='/google/data/ro/projects/audio/chromemedia/visqol'

/google/src/head/depot/google3/devtools/blaze/scripts/blaze-run.sh \
  -c opt //third_party/visqol:main -- \
  --reference_file "$WORK_DIR/boz48_stereo.wav" \
  --degraded_file "$WORK_DIR/boz48_stereo_24kbps_aac.wav" \
  --similarity_to_quality_model "/google/src/head/depot/google3/third_party/visqol/model/libsvm_nu_svr_model.txt" \
  --verbose
