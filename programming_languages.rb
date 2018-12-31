
def output_style_a(data_structure, language)
  return_array = []
  data_structure.each do |key, value|
    return_array << key if value.keys.any? {|key| key == language} 
  end
  return_array
end

def output_type_s(data_structure, language)
  return_string = ""
  data_structure.each do |key, value|
    value.each do |lang, lang_type|
      return_string = lang_type.values.join if lang == language
    end
  end
  return_string
end

def build_languages_array(data_structure)
  lang_array = []
  data_structure.each do |key, value|
    lang_array << value.keys
  end
  lang_array.flatten.uniq
end

def reformat_languages(data_structure)
  return_hash = {}
  build_languages_array(data_structure).each do |language|
    return_hash[language] = 
    {:type => output_type_s(data_structure, language), :style => output_style_a(data_structure, language)}
  end
  return_hash
end
