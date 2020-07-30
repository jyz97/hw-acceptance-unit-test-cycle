FactoryOne.define do
    factory :movie do
        id '1'
        title 'Star Wars'
        rating 'PG'
        director 'George Lucas'
        release_date '1977-05-25'
    end
end

FactoryTwo.define do
    factory :movie do
        id '2'
        title 'THX-1138'
        rating 'R'
        director 'George Lucas'
        release_date '1971-03-11'
    end
end