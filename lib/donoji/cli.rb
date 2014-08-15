require 'thor'
module Donoji
  class CLI < Thor

    desc "find character", "tries to find a common use for a character"
    def find(letter)
      print letter
    end

    desc "prompts for character", "asks the user for a charcter"
    def prompt_for_character
      find(prompt_input("どのじを探していますか？:\n"))
    end

    desc "prompt", "ask user for input"
    def prompt_input(msg)
      print(msg)
      stdin.gets.chomp
    end

    default_task :prompt_for_character
  end
end
