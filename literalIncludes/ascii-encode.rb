module Jekyll
  module AsciiEncodeFilter
    def ascii_encode(input)
      input.nil? ? input : input.chars.map { |c| /[a-zA-Z0-9]/.match(c) ? c : c.ord }.join
    end
  end
end

Liquid::Template.register_filter(Jekyll::AsciiEncodeFilter)
