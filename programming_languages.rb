require 'pry'
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  languages.collect { |style, style_data|
    style_data.collect { |language, language_data|
      if language == :javascript
      language_data[:style] = [:oo, :functional]
      else
      language_data[:style] = []
      language_data[:style] << style
    end
    }
  }
 new_hash = Hash.new
 languages.each { |style, style_data|
   style_data.each { |language, language_data|
     new_hash[language] = language_data
    }
  }
new_hash
end
reformat_languages(languages)
