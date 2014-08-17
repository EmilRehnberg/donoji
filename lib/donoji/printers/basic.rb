module Donoji
  module Printer
    module Basic
      extend ColorText
      def self.print_word(word)
        puts(magenta(word.to_s))
      end

      def self.query(msg)
        print(dark_blue(msg.concat("： ")))
      end

      def self.print_all_matches(matches)
        matches.each do |word|
          print_word(word)
        end
      end
    end
  end
end
