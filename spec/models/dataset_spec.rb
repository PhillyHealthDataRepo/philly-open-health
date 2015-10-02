require "rails_helper"

RSpec.describe Dataset, type: :model do
  let(:dataset) { create :dataset }

  it "has a dataset id" do
    expect(dataset.id).to be_present
  end

  it "has a title" do
    expect(dataset.title).to eq("Dataset Title")
  end

  it "has a description" do
    expect(dataset.description).to eq("Description")
  end
end
