module Donoji
  module Printer
    module Basic
      extend Base

      def self.print_word(word)
        puts(magenta(word.to_s))
      end
    end
  end
end
