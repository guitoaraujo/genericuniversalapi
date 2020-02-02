require 'rails_helper'

RSpec.describe Phrase, type: :model do
  it 'it must has a quotation to be valid' do
    expect(Phrase.create(quotation: nil)).to_not be_valid
  end

end
