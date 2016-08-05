module VagrantPlugins
  module Chakraos
    class Plugin < Vagrant.plugin("2")
      name "Chakraos host"

      description "Chakraos host support"

      host("chakraos", "arch") do
        require_relative "host"
        Host
      end

      host_capability("arch", "nfs_installed") do
        require_relative "cap/nfs"
        Cap::NFS
      end

      host_capability("arch", "nfs_check_command") do
        require_relative "cap/nfs"
        Cap::NFS
      end

      host_capability("arch", "nfs_start_command") do
        require_relative "cap/nfs"
        Cap::NFS
      end
    end
  end
end
