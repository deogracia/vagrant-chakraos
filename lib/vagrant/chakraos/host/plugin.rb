module Vagrant
  module Chakraos
    class Plugin < Vagrant.plugin("2")
      name "Chakraos Host"
      description "Chakraos Host support"

      host("chakraos", "arch") do
        require_relative "host"
        Host
      end
    end
  end
end
