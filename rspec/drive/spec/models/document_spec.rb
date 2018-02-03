require 'rails_helper'

RSpec.describe Document, type: :model do
	let(:document){ create(:document)}
  	let(:doc){ Document.first}
  	let(:user){ User.first }

	describe "Associations" do 
		it {is_expected.to belong_to(:folder)}
	end

	describe "Callbacks" do 
		it "Should strip spaces before and trailing spaces before saving" do 
			# s = build(:document, name: "thj.         ")
			create(:invalid_document)
			# s.save
			doc 
			expect(doc.name).to eql('thj.')
			# expect(Document.find())
		end
	end

	describe "Validations" do
		it { should validate_presence_of(:name) }
		it { should validate_presence_of(:folder_id) }
	end

	describe "Instance Methods" do
		it "Should make copy when folder id is given" do
			document
			user 
			doc 
			fol = build(:folder, user_id: user.id )
			fol.save
			doc.make_copy fol
			doc = Document.last
			expect(doc.folder_id).to eql(fol.id)
		end

		it "Should make copy in same folder id is not given" do
			document
			user
			doc 
			doc.make_copy 
			new_doc = Document.last
			expect(doc.folder_id).to eql(new_doc.folder_id)
		end
	end

	
	


  pending "add some examples to (or delete) #{__FILE__}"
end
