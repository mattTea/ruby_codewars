# Given a dictionary/hash/object of languages and your respective test results,
# return the list of languages where your test score is at least 60,
# in descending order of the results.
# Note: There will be no duplicate values.

results = {"Java" => 10, "Ruby" => 80, "Python" => 65} # --> ["Ruby", "Python"]
# results = {"Hindi" => 60, "Dutch" => 93, "Greek" => 71} # --> ["Dutch", "Greek", "Hindi"]
# results = {"C++" => 50, "ASM" => 10, "Haskell" => 20} # --> []

def my_languages(results)
  sort_results = results.sort_by { |language, score| -score }.to_h
  
  filter_results = sort_results.select { |language, score| score > 59 }.to_h

  final_languages = []
  filter_results.each_key { |language, score| final_languages.push(language) }
  return final_languages
end

my_languages(results)