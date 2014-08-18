module Donoji
  module Printer
    module Base
      include ColorText

      def query(msg)
        print(dark_blue(msg.concat("： ")))
      end

      def print_all_matches(matches)
        matches.each do |word|
          print_word(word)
        end
      end
    end
  end
end
