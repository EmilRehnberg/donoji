require 'thor'
require 'donoji'

module Donoji
  class CLI < Thor
    default_task :prompt_for_character

    desc "find character", "tries to find a common use for a character"
    def find(letter)
      searcher = MainichiWordSearcher.new(letter)
      searcher.find
      enter_results_control(searcher)
    end

    desc "prompts for character", "asks the user for a charcter"
    def prompt_for_character
      find(prompt_input("どのじを探していますか？"))
    end

    private

    def prompt_input(msg)
      print(msg.concat("：\n>> "))
      gets.chomp
    end

    def enter_results_control(searcher)
      puts(searcher.matches)
    end
  end
end
