require "spec_helper"
describe Article do
  describe "#embed" do
    context "when link is not nil" do
      let(:article) do
        Article.create(link: "https://www.youtube.com/watch?v=sxy920Nd7yY")
      end
      it "gives the proper embed code after the equals sign" do
        expect(article.embed).to eql "sxy920Nd7yY"
      end
    end
    context "when link is nil" do
      let(:article) do
        Article.create(link: nil)
      end
      it "returns nil" do
        expect(article.embed).to eql "dQw4w9WgXcQ"
      end
    end
  end
end
