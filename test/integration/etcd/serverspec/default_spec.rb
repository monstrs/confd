require_relative 'spec_helper'

describe service('etcd') do
  it { should be_running }
end

describe service('confd') do
  it { should be_running }
end

describe file('/tmp/test.conf') do
  it { should contain 'test_value' }
end
