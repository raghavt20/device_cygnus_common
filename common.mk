#
# Copyright (C) 2020 Cygnus OS
#
# Licensed under The Cartel Project License, Version 1.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://github.com/cartelproject/cpl
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit the common BoardConfig.
-include device/cygnus/common/BoardConfig.mk

ifeq ($(TARGET_COMMON_CYGNUS_COMPONENTS), all)
TARGET_COMMON_CYGNUS_COMPONENTS := \
    servicetracker
endif

ifneq (,$(filter servicetracker, $(TARGET_COMMON_CYGNUS_COMPONENTS)))
include device/cygnus/common/servicetracker/servicetracker.mk
endif

