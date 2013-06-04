get '/:word' do
  # Look in app/views/index.erb
  @word = params[:word]
  sorted_word = @word.downcase.split(//).sort.join
  @array_of_anagrams = Word.where(canonical: "#{sorted_word}")

  erb :index
end
