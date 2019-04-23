require "spec_helper"

describe Video do
  let(:url) { "https://vimeo.com/323863544" }
  let(:video) { Video.new("OOP Clinic", "Sample Text", url) }

  describe "#initialize" do
    it "has a name, a body, and a url" do
      expect(video.name).to eq("OOP Clinic")
      expect(video.body).to eq("Sample Text")
      expect(video.url).to eq(url)
    end
  end

  describe "#submittable?" do
    it "returns false" do
      expect(video.submittable?).to eq(false)
    end
  end
end
