#
# Cookbook Name:: confd_test
# Attributes:: default
#
# Copyright 2015, Andrey Linko
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['confd']['interval']  = 10

default['etcd']['sha256'] = 'b351d05f68d2a8f3fce2d4038f3ecf3408901ac2ec37240ff0043b4c989484f5'
