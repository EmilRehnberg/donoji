module Donoji
  Word = Struct.new(:face, :hits) do
    include(ColorText)

    def to_s
      magenta("#{face}：#{hits}")
    end
  end
end
