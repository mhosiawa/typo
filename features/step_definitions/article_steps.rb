# Add a declarative step here for populating the DB with movies.

Given /^article "(.*?)" exists$/ do |arg1|
	create(:article, :title => "#{arg1}", :body => "#{arg1}")
end

When /^I fill in "(.*?)" with article "(.*?)" id$/ do |arg1, arg2|
	id=Article.find_by_title(arg2)
	step("I fill in \"#{arg1}\" with \"#{id}\"")
end




