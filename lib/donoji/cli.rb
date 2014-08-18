require 'donoji'

module Donoji
  class CLI < Thor
    default_task :prompt_for_character

    desc "find character", "tries to find a common use for a character"
    def find(letter)
      set_printer
      search(letter)
    end

    desc "prompts for character", "asks the user for a charcter"
    def prompt_for_character
      set_printer
      search(prompt_input("どのじを探していますか？"))
    end

    private

    def search(letter)
      searcher = MainichiWordSearcher.new(letter)
      enter_results_control(searcher.matches)
    end

    def prompt_input(msg)
      @printer.query(msg)
      gets.strip.chomp
    end

    def enter_results_control(matches)
      words = matches.to_enum
      print_next_word(words)
      until last_word?(words) do
        case prompt_input("次(n) / 止(q) / 全(a)?")
        when "n" then print_next_word(words)
        when "a" then
          @printer.print_all_matches(matches)
          abort
        when "q" then abort
        else next
        end
      end
    end

    def print_next_word(words)
      @printer.print_word(words.next)
    end

    def last_word?(words)
      !words.peek rescue true
    end

    def set_printer
      @printer = Printer::Extended
    end
  end
end
