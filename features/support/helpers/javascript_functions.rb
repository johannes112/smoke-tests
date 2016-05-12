#Here are all javascript-functions that are saved in ruby variables
class Jsfunctions
  attr_accessor :disableStylesheet
  
  def initialize
    
    @disableStylesheet="document.styleSheets[0].disabled = !document.styleSheets[0].disabled;"
  
  end
end