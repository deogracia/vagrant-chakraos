module VagrantPlugins
  module Chakraos
    module Guest
      class Guest < Vagrant.plugin("2", :guest)
          def detect?(env)
            File.exist?("/etc/chakra-release")
          end
        end
      end
    end
  end
end
