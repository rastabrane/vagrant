module Vagrant
  module Command
    class ResumeCommand < NamedBase
      register "resume", "Resume a suspended Vagrant environment."

      def execute
        target_vms.each do |vm|
          if vm.created?
            vm.resume
          else
            vm.env.ui.info "vagrant.commands.common.vm_not_created"
          end
        end
      end
    end
  end
end
