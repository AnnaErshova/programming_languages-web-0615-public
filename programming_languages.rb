=begin
  
rescue Exception => e
  
endlanguages = {
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
=end

# THIS IS INCOMPLETE

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, value| # => key = style; value = other
    value.each do |language, type| # => type is still a key-value pair
      if new_hash.has_key?(language)
        new_hash[language][:style] << style
      else
        new_hash[language] = type
        new_hash[language][:style] = [style]
      end # end if statement
    end # end value block
  end # end language block
  new_hash
end # end method


# original hash:
# {style => { language_name => { :type => value}}}
# need to have:
# {languages => {style => value, :type => value}}}



