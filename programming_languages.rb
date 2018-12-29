require 'pry'
  def reformat_languages(languages)
  new_hash = {} 
    languages.each {|style, description|
     description.each {|language, type|
     
       if new_hash.has_key?(language)
         new_hash[language][:style] << style
       else
         new_hash[language] = type
         new_hash[language][:style] = [style]
       end
     }
    }
 
    new_hash  
 
 end