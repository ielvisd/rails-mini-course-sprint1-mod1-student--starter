# Accepts a 'people' array and a 'language' string
def language_screening(people, language)
    # Use select to get candidates that meet the boolean check
    language_screened_candidates = people.select{|person| 
        # For each person make a lowecased array of the languages they know
        persons_lowercased_languages = person[:languages].map{|language| language.downcase }
        # Look in that array to see if it matches the language we are looking for
        # this evaluates to true or false, adding to results array if true
        persons_lowercased_languages.include? language.downcase}
    language_screened_candidates
end

# irb(main):148:0> language_screening(candidates, "Python")
# => [{:first_name=>"Sara", :last_name=>"Smith", :level=>:mid_level, :age=>26, :occupation=>"Software Developer", :employed=>true, :current_salaray=>80000.0, :languages=>["Ruby", "Python"]}, {:first_name=>"Jason", :last_name=>"Gray", :level=>:entry_level, :age=>23, :occupation=>"Student", :employed=>false, :current_salaray=>0.0, :languages=>["C++", "Python"]}]
# irb(main):149:0> 

# irb(main):151:0> language_screening(candidates, "GO")
# => [{:first_name=>"Jane", :last_name=>"Doe", :level=>:senior_level, :age=>30, :occupation=>"Software Developer", :employed=>true, :current_salaray=>125000.0, :languages=>["Ruby", "JavaScript", "Go"]}]
# irb(main):152:0> 

# irb(main):152:0> language_screening(candidates, "javascript")
# => [{:first_name=>"Jane", :last_name=>"Doe", :level=>:senior_level, :age=>30, :occupation=>"Software Developer", :employed=>true, :current_salaray=>125000.0, :languages=>["Ruby", "JavaScript", "Go"]}]