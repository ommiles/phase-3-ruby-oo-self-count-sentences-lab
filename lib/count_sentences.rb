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
    # split pattern is a Regexp
    # str is divided where the pattern matches
    # delete_if deletes every element of self for which block evaluates to true
    # eliminate empty strings from the array if array length is less than 2
    # implicitly returns array length (number of sentences in a string)
    self.split(/\.|\?|\!/).delete_if {|arr| arr.size < 2}.size
  end
end