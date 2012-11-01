require 'thor-foodcritic/version'
require 'foodcritic'

module ThorFoodCritic
  class Tasks < Thor
    namespace "foodcritic"

    method_option :tags,
      type: :array, 
      aliases: "-t", 
      desc: "Only check against rules with the specified tags.",
      default: Array.new
    method_option :include,
      type: :array,
      aliases: "-I",
      desc: "Additional rule file path(s) to load.",
      default: Array.new
    method_option :epic_fail,
      type: :array,
      aliases: "-f",
      desc: "Fail the build if any of the specified tags are matched.",
      default: Array.new
    method_option :exclude_paths,
      type: :array,
      aliases: "-e",
      desc: "Paths to exclude when running tests.",
      default: ['test/**/*', 'spec/**/*', 'features/**/*']
    desc "lint", "Run a lint test against the Cookbook in your current working directory."
    def lint
      review = ::FoodCritic::Linter.new.check(Dir.pwd, 
        tags: options[:tags],
        include_rules: options[:include],
        fail_tags: options[:epic_fail],
        exclude_paths: options[:exclude_paths]
      )
      say(review, :red)
      exit_if_failure(review)
    end

    private

      def exit_if_failure(review)
        review.failed? ? exit(100) : nil
      end
  end
end
