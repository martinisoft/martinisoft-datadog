# martinisoft-datadog cookbook

A wrapper cookbook for [datadog](https://github.com/DataDog/chef-datadog) that is configured for martinisoft.

# Requirements

* Ubuntu 12.04

# Usage

Add martinisoft-datadog to the run\_list

# Attributes

None

# Recipes

* default - configures and sets the API keys via the encrypted martinisoftware data bag
* agent - installs the datadog agent on the system
* handler - includes the chef-client handler to report on every chef run

# Author

Author:: Aaron Kalin (<akalin@martinisoftware.com>)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
