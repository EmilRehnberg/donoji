module Donoji
  Word = Struct.new(:face, :hits) do
    def to_s
      "#{face}：#{hits}".light_magenta
    end
  end
end
