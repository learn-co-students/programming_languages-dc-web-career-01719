require 'pry'
def reformat_languages(languages)
  new_hash = {}
    languages.each do |style, lang|
        style_val = style
        value = ""
        lang.each do |type, val|
            if new_hash[type] == nil
                new_hash[type] = val
                new_hash[type][:style] = []
                new_hash[type][:style] << style_val
            else
                new_hash[type][:style] << style_val
            end
        end
    end
    new_hash
end
