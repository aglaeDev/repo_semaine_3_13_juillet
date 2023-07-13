require_relative '../jour_4/mairie_christmas.rb'

RSpec.describe "get_townhall_email" do
    it "returns an array of hashes with the name of town and email" do
        expected_result = [
            {"ville_1" => "email_1" },
            { "ville_2" => "email_2" },
        ]

        expect(get_townhall_email).to eq(expected_result)
    end
end