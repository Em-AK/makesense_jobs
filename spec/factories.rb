FactoryGirl.define do
  factory :job do
    email 'dude@makesense.org'
    title 'Badass fullstack developper'
    apply 'Pigeon me your github profile'
    company_name 'Do It With Joy'
    company_url 'https://jobs.makesense.org'
  end

  factory :organisation do
    name 'MakeSense International'
    website 'https://makesense.org'
  end
end
