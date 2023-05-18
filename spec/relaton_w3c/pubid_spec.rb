describe RelatonW3c::PubId do
  context "docnumber to parts" do
    it "with stage, code, date, suffix" do
      parts = described_class.parse("REC-CSS2-19980512/fonts").to_hash
      expect(parts).to eq(
        stage: "REC", code: "CSS2",
        date: "19980512", suff: "fonts"
      )
    end

    it "with year" do
      parts = described_class.parse("REC-xml-1998").to_hash
      expect(parts).to eq(stage: "REC", code: "xml", date: "1998")
    end
  end
end
