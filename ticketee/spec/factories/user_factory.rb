FactoryGirl.define do

	factory :user do
		trait :admin do
			admin true
		end

		sequence(:email) { |n| "test#{n}@example.com" }
		password "password"
	end
end