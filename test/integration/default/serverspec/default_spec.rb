#require 'serverspec'
require_relative '../../helper_spec.rb'

#NOTE: https://serverspec.org/resource_types.html

describe package('httpd') do
  it { should be_installed }
end

describe service('httpd') do
  it { should be_enabled }
end

describe process("httpd") do
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end

describe file('/var/www/html') do
  it { should be_directory }
end
