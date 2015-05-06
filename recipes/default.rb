#
# Cookbook Name:: confd
# Recipe:: default
#
# Copyright 2014, Andrey Linko
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

include_recipe 'runit'
include_recipe "confd::#{node['confd']['install_method']}"

directory '/etc/confd/templates' do
  recursive true
  mode 00644
end

directory '/etc/confd/conf.d' do
  recursive true
  mode 00644
end

template '/etc/confd/confd.toml' do
  mode 00644
end

runit_service 'confd' do
  default_logger true
  restart_on_update false
end
