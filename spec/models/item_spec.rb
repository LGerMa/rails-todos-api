require 'rails_helper'

RSpec.describe Item, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  #Association test
  #belongs to

  it { should belong_to(:todo) }

  #Validation test

  it { should validate_presence_of(:name) }
end
