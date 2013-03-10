require 'spec_helper'

describe 'merge' do

	before do
		@blog=Factory.create(:blog)
	end


	it 'should use title of the first article in the merged article' do
		test1=Factory.create(:article, :title => "test1")
		test2=Factory.create(:article, :title => "test2")
		test1.merge_with(test2.id).title.should == test1.title
	end

	it 'should combine atricle one body with article two body and return combined article' do
		test1=Factory.create(:article, :title => "test1", :body => "test1")
		test2=Factory.create(:article, :title => "test2", :body => "test2")
		test1.merge_with(test2.id).body.should == "test1 test2"
	end

	it 'should use author of the first article in the merged article' do
		test1=Factory.create(:article, :user => Factory(:user, :name => "user1"))
		test2=Factory.create(:article, :user => Factory(:user, :name => "user2"))
		test1.merge_with(test2.id).user.should == test1.user
	end

	it 'should combine comments from the first article with comments from the second article' do
		test1=Factory.create(:article)
		test2=Factory.create(:article)
		comment1=Factory(:comment, :article => test1)
		comment2=Factory(:comment, :article => test2)
		test1.merge_with(test2.id).comments.should == [comment1,comment2]
	end

	it 'should destroy article two after merging, expect for comments'


end
	
