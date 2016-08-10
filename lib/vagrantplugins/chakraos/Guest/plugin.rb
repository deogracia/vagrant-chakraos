module VagrantPlugins
  module Chakraos
    module Guest
      class Plugin < Vagrant.plugin("2")
        name "Chakraos guest"
        description "Chakraos guest support"

        guest(:chakraos, :arch) do
          require_relative "guest"
          Guest
        end
      end
    end
  end
end
