FactoryBot.define do
  factory(:business) do
    name {'Hotlips Pizza'}
    business_type {'Restaurant'}
    phone {'503 234 9999'}
    website {'https://www.hotlipspizza.com/'}
    addresss { '2211 SE Hawthorne Blvd, Portland OR, 97214'}
  end
end