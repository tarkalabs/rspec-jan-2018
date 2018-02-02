require 'rails_helper'

RSpec.describe Document, type: :model do
	it {is_expected.to belong_to(:folder)}

  pending "add some examples to (or delete) #{__FILE__}"
end
