require "rails_helper"

RSpec.describe Attachment, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  let(:attachment) { create :attachment }

  it "has a dataset id" do
    expect(attachment.dataset_id).to be_present
  end
end
