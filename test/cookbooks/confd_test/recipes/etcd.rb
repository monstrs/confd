#
# Cookbook Name:: confd_test
# Recipe:: etcd
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

node.set['confd']['backend'] = 'etcd'
node.set['confd']['nodes'] = ["http://#{node['ipaddress']}:4001"]

include_recipe 'etcd'
include_recipe 'confd'

template '/etc/confd/conf.d/test-app.toml' do
  notifies :hup, 'runit_service[confd]', :delayed
  mode 00644
end

template '/etc/confd/templates/test-app.tmpl' do
  notifies :hup, 'runit_service[confd]', :delayed
  mode 00644
end

execute 'set template variables' do
  command <<-CMD
    etcdctl set /test test_value
  CMD
end
