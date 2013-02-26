#require_relative 'codebreaker/version'

module Codebreaker
  class Game

    def initialize(output)
      @output = output
      
    end

    def start(secret)
      @secret = secret
      @output.puts "Welcome! Here is your first try:"

    end

    def try(try)
      checkup = Checkup.new(@secret, try)
      if checkup.exact_match_count == 4
        @output.puts = "Congratulations!"
      else
        @output.puts '+'*checkup.exact_match_count +
                     '-'*checkup.number_match_count
      end
    end
  end
end

