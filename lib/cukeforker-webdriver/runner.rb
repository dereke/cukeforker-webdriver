module CukeForker
  module WebDriver
    class Runner
      def self.run(features, options)
        max = options.fetch(:max, 2)
        options[:notify] = CukeForker::WebDriver::ParallelPortManager.new(max)

        CukeForker::Runner.run(
            features,
            options
        )
      end
    end
  end
end
