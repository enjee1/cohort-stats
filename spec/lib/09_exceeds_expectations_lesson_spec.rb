require "spec_helper"

describe Lesson do
  let(:lesson) { Lesson.new("Test Driven Development", "Sample Text") }
  describe "#initialize" do
    it "has a name and a body" do
      expect(lesson.name).to eq("Test Driven Development")
      expect(lesson.body).to eq("Sample Text")
    end

    it "has a name and body that can be changed" do
      lesson.name = "OOP Concepts"
      lesson.body = "Other Sample Text"
      expect(lesson.name).to eq("OOP Concepts")
      expect(lesson.body).to eq("Other Sample Text")
    end
  end

  describe "#submittable?" do
    it "returns false" do
      expect(lesson.submittable?).to eq(false)
    end
  end
end
