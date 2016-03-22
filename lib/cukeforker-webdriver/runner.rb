module CukeForker
  module WebDriver
    class Runner
      def self.run(features, options)
        max = options.fetch(:max, 2)
        options[:notify] = CukeForker::WebDriver::ParallelPortManager.new(max)

        if CukeForker::Runner.run(features, options)
          exit 0
        else
          exit 1
        end
      end
    end
  end
end
