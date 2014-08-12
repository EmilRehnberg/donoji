module Donoji
  Tango = Struct.new(:men, :bandsuke, :hits) do
    def initialize(men)
      super
      self[:men] = men
    end
  end
end
