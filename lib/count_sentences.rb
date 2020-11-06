require 'pry'

class String

  def sentence?
    self.end_with?('.')
    # self[self.length - 1] == '.'
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    # self.split(/[?!.]+/).length      #simple showcase of regex beauty
    sentences_array = split('!').join('.').split('?').join('.').split('.') # Oh well...!
    count = 0
    sentences_array.each{ | sentence | count += 1 if sentence != ''}
    count
  end
end