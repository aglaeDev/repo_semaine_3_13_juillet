require 'rubygems'
require 'nokogiri' 
require 'open-uri'

def crypto_scrapper
    cryto_name = []
    cryto_price = []
    #crypto = []

    doc = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

    doc.xpath('/html/body/div[1]/div[2]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div').each do |link|
        cryto_name<<link.content
    end

    doc.xpath('/html/body/div[1]/div[2]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/div').each do |link|
        cryto_price<<link.content
    end

    arr = cryto_name.zip(cryto_price).map {|name, price|{name => price}}
    puts arr
end
crypto_scrapper