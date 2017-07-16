FactoryGirl.define do
  factory(:item) do
    name('thing for sale')
    price(20)
  end

  factory(:user) do
    name('user')
    email('test@test.com')
    password('string234')
    password_confirmation('string234')
  end

  factory(:review) do
    body("this is a glowing review")
    item_id(1)
    user_id(1)
  end
end
