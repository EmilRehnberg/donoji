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
      print(msg.concat("： "))
      gets.chomp
    end

    def enter_results_control(searcher)
      words = searcher.matches.to_enum
      puts(words.next)
      until last_word?(words) do
        case prompt_input("次(n) / 止(q)?")
        when "n" then puts("#{words.next}")
        when "q" then abort
        else next
        end
      end
    end

    def last_word?(words)
      !words.peek rescue true
    end
  end
end
