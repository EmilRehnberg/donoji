module Donoji
  module Printer
    module Extended
      extend Base
      INDENT  = "\s\s"

      def self.print_word(word)
        puts(magenta(word.to_s))
        puts(grey("#{INDENT}#{word.google_search_url}"))
        puts(grey("#{INDENT}#{word.dic_goo_ne_url}"))
      end
    end
  end
end
