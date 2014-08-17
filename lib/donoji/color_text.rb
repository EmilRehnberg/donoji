# For color codes and string formatting:
# http://kpumuk.info/ruby-on-rails/colorizing-console-ruby-script-output/
# https://github.com/fazibear/colorize/blob/master/lib/colorize.rb

module Donoji
  module ColorText

    def grey(txt);      colorize(txt, 37); end
    def magenta(txt);   colorize(txt, 95); end
    def dark_blue(txt); colorize(txt, 34); end

    private

    def colorize(txt, color_code)
      "\e[#{color_code}m#{txt}\e[0m"
    end
  end
end
