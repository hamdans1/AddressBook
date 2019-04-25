require_relative '../models/entry'

RSpec.describe Entry do

  describe "attributes" do
    let(:entry) {Entry.new('Sami Hamdan', '555.862.5938', 'sami@hamdan.com')}

    it "responds to name" do
      expect(entry).to respond_to(:name)
    end

    it "reports its name" do
      expect(entry.name).to eq('Sami Hamdan')
    end

    it "responds to phone number" do
      expect(entry).to respond_to(:phone_number)
    end

    it "reports its phone number" do
      expect(entry.phone_number).to eq('555.862.5938')
    end

    it "responds to email" do
      expect(entry).to respond_to(:email)
    end

    it "reports its email" do
      expect(entry.email).to eq('sami@hamdan.com')
    end
  end

  describe "#to_s" do
    it "prints an entry as a string" do
      entry = Entry.new('sami hamdan', '555.862.5938', 'sami@hamdan.com')
      expected_string = "Name: sami hamdan\nPhone Number: 555.862.5938\nemail: sami@hamdan.com"
      expect(entry.to_s).to eq(expected_string)
    end
  end

end
