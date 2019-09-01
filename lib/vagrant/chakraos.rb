require "vagrant/chakraos/version"

begin
	require "vagrant"
rescue LoadError
	raise "The Chakraos plugin must be run within Vagrant."
end

module Vagrant
  module Chakraos

  end
end
