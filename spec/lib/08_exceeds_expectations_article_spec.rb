require "spec_helper"

describe Article do

  let(:article) { Article.new("Use the TDD Force", "Sample Text") }
  describe "#initialize" do
    it "has a name and a body" do
      expect(article.name).to eq("Use the TDD Force")
      expect(article.body).to eq("Sample Text")
    end
  end

  describe "#submittable?" do
    it "returns false" do
      expect(article.submittable?).to eq(false)
    end
  end
end
