def average_age(people)
    # Iterate over the list of people and extract age value using 'map'
    ages = people.map{|person| person[:age]}
    # Use reduce to sum all ages
    sum_of_ages = ages.reduce(0) do |sum, age|
        sum += age
        sum
    end
    average_age = sum_of_ages / people.length.to_f
    average_age
end

# irb(main):055:0> average_age(people)
# => 26.333333333333332