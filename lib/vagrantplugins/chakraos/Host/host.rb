module VagrantPlugins
  module Chakraos
    module Host
      class Host < Vagrant.plugin("2", :host)
        def detect?(env)
          File.exist?("/etc/chakra-release")
        end
      end
    end
  end
end
