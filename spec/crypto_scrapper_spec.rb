require_relative '../jour_4/lib/crypto_scrapper.rb'

    RSpec.describe "crypto_scrapper" do 
        it "returns an array of hashes with crypto names and prices" do
        expected_result = [
            {"BTC" => "$5245.12"},
            {"ETH" => "$217.34"},
            {"USDT" => "$1.00"},
        ]

        expect(crypto_scrapper).to eq(expected_result)
    end
end
