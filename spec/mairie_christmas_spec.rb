require_relative '../lib/mairie_christmas.rb'

RSpec.describe "mairie_christmas" do
    it "returns an array of hashes with the name of town and email" do
        mairie_name
        #expected_result = [
         #   {"ABLEIGES" => "mairie.ableiges95@wanadoo.fr" },
         #   { "AINCOURT" => "mairie.aincourt@wanadoo.fr" },
        #]

        expect(mairie_christmas).to eq(expected_result)
    end
end