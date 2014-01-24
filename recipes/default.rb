#
# Cookbook Name:: martinisoft-datadog
# Recipe:: default
#
# Copyright (C) 2014 Aaron Kalin
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

datadog_info = begin
                 env_vars = Chef::EncryptedDataBagItem.load("martinisoftware", "api_keys").to_hash
                 env_vars.delete("id")
                 env_vars["datadog"]
               rescue => ex
                 raise "Could not decrypt or load api_keys data bag!"
               end

normal["datadog"]["api_key"] = datadog_info["api_key"]
normal["datadog"]["application_key"] = datadog_info["application_key"]

include_recipe "datadog::default"
