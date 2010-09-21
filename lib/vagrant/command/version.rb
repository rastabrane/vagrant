module Vagrant
  module Command
    class VersionCommand < Base
      register "version", "Prints the Vagrant version information", :alias => %w(-v --version)

      def version
        env.ui.info("vagrant.commands.version.output",
                    :version => Vagrant::VERSION,
                    :_prefix => false)
      end
    end
  end
end
