
class WordFormatter
attr_accessor(:string)
  def initialize(string)
    @string = string
  end

  def make_camelcase

    result = @string.split.each{|i| i.capitalize!}.join(' ')
    return result.delete ' '

  end

  # def make_camelcase2
  #   result = @string.split.each{|i| i.capitalize!}.join('-')
  #   puts result
  #   return result
  # end
 
  def make_upcase
    result = @string.upcase
    return result
  end

end

