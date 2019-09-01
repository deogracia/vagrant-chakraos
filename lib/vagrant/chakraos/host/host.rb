module Vagrant
  module Chakraos
    class Host Vagrant.plugin("2", :host)
      def detect?(env)
        File.exist?("/etc/chakra-release")
      end
    end
  end
end
