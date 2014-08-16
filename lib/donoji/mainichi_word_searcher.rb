module Donoji
  class MainichiWordSearcher
    attr_reader :matches, :letter

    DATA_PATH = GemConfig.paths[:mainichi_path]
    PARSE_OPTIONS = {
      headers: false,
      skip_lines: "#",
      skip_blanks: true,
      col_sep: "\t"
    }

    def initialize(letter)
      @letter = letter
      @matches = []
    end

    def find
      CSV.foreach(DATA_PATH, PARSE_OPTIONS) do |wr|
        @matches.push(Word.new(wr[0], wr[1])) if wr[0].match(@letter)
      end
    end
  end
end
