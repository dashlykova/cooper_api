FactoryBot.define do
  factory :user do
    email { 'dash@dash.com' }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
