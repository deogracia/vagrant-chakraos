=begin
begin
  require 'vagrant'
rescue LoadError
  raise "The Chakraos plugin must be run within Vagrant."
end

if Vagrant::VERSION < '1.2.0'
  fail "The Chakraos plugin is only compatible with Vagrant 1.2+"
end
=end

module VagrantPlugins
  module Chakraos
    module Host
      class Plugin < Vagrant.plugin("2")
        name "Chakraos host"

        description "Chakraos host support"

        host("chakraos", "arch") do
          require_relative "host"
          Host
        end

        host_capability("chakraos", "nfs_installed") do
          require_relative "cap/nfs"
          Cap::NFS
        end

        host_capability("chakraos", "nfs_check_command") do
          require_relative "cap/nfs"
          Cap::NFS
        end

        host_capability("chakraos", "nfs_start_command") do
          require_relative "cap/nfs"
          Cap::NFS
        end
      end
    end
  end
end
