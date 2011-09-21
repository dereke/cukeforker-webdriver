require 'cukeforker/abstract_listener'

module CukeForker
  module WebDriver
    class ParallelPortManager < CukeForker::AbstractListener
      def initialize(max)
        @port_pool = CukeForker::WebDriver::PortPool.new max
        @available_ports = []
        until @available_ports.length == max
          @available_ports << @port_pool.get
        end
      end

      def on_worker_starting(worker)
        worker.data.web_driver_port = @available_ports.shift
      end

      def on_worker_forked(worker)
        require_relative 'capybara/driver'
        ENV['web_driver_port'] = worker.data.web_driver_port.to_s
      end

      def on_worker_finished(worker)
        @available_ports << worker.data.web_driver_port
      end
    end
  end
end