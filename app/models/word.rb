class Word < ActiveRecord::Base
  # Remember to create a migration!
  before_create :save_canonical


private
def translate_canonical(word)
  word.downcase.split(//).sort.join
end
def save_canonical
  self.canonical = translate_canonical(self.name)
end

end
