begin
	require "vagrant"
rescue LoadError
	raise "The Chakraos plugin must be run within Vagrant."
end

=begin
# This is a sanity check to make sure no one is attempting to install
# this into an early Vagrant version.
if Vagrant::VERSION < "1.2.0"
	raise "The Chakraos plugin is only compatible with Vagrant 1.2+"
end
=end

require "vagrantplugins/chakraos/version"
require "vagrantplugins/chakraos/Host/plugin"
require "vagrantplugins/chakraos/Guest/plugin"

module VagrantPlugins
  module Chakraos

  end
end
