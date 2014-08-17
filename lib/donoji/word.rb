module Donoji
  Word = Struct.new(:face, :hits) do
    def to_s
      "#{face}：#{hits}"
    end

    def google_search_url
      "https://www.google.nl/search?q=#{face}&language=ja"
    end

    def dic_goo_ne_url
      "http://dictionary.goo.ne.jp/srch/all/#{face}/m0u/"
    end
  end
end
