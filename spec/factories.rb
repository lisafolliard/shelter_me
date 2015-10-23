FactoryGirl.define do
  factory(:post) do
    title "Big Bike"
    contributor "Sue Marie"
    description "Nice Bike"
    image 'image'
  end
end

FactoryGirl.define do
  factory(:tag) do
    name "Boat"
  end
end
