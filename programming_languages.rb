
def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, language_hash|
    language_hash.each do |language_name, language_att_hash|
      if new_hash[language_name]
        new_hash[language_name][:style] << style
      else
        new_hash[language_name] = {:type => language_att_hash[:type], :style => [style]}
      end
    end
  end
  new_hash
end
