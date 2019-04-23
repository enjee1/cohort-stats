require "spec_helper"

describe Challenge do
  let(:challenge) { Challenge.new("Isla Grille", "Sample Text") }

  describe "#initialize" do
    it "has a name and a body" do
      expect(challenge.name).to eq("Isla Grille")
      expect(challenge.body).to eq("Sample Text")
    end
  end

  describe "#submittable?" do
    it "returns true" do
      expect(challenge.submittable?).to eq(true)
    end
  end
end
