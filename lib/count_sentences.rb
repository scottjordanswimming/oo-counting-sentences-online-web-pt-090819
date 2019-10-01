require 'pry'

class String

  def sentence?
    
    self.end_with?(".")
    
  end

  def question?
    
    self.end_with?("?")

  end

  def exclamation?
    
    self.end_with?("!")

  end

  def count_sentences
    
    x = [".", "!", "?", "!!", "??"]
 
    self.split(Regexp.union(x)).count.reject(&:empty?)
  binding.pry
  
   
  end
end