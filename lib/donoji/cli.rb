require 'donoji'

module Donoji
  class CLI < Thor
    default_task :prompt_for_character

    desc "[--verbose]", "tries to find a common use for a character"
    method_option :verbose, type: :boolean, aliases: "-v"
    def find(letter)
      set_printer(options)
      search(letter)
    end

    desc "[--verbose]", "asks the user for a charcter"
    method_option :verbose, type: :boolean, aliases: "-v"
    def prompt_for_character
      set_printer(options)
      search(prompt_input("どのじを探していますか？"))
    end

    private

    def search(letter)
      searcher = MainichiWordSearcher.new(letter)
      enter_results_control(searcher)
    end

    def prompt_input(msg)
      @printer.query(msg)
      STDIN.gets.strip.chomp
    end

    def enter_results_control(searcher)
      matches = searcher.matches
      exit_amicably(searcher.letter) if matches.empty?
      words = matches.to_enum
      print_next_word(words)
      until last_word?(words) do
        case prompt_input("次(n) / 全(a)? / 他(o) / 止(q)")
        when "n" then print_next_word(words)
        when "a" then
          @printer.print_all_matches(matches)
          abort
        when "o" then
          prompt_for_character
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

    def set_printer(options)
      @printer = options[:verbose] ? Printer::Extended : Printer::Basic
    end

    def exit_amicably(letter)
      puts "『#{letter}』に一致する情報は見つかりませんでした"
      abort
    end
  end
end
