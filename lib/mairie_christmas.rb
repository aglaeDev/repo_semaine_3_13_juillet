require 'nokogiri'
require 'open-uri'

def mairie_christmas
  mairie_name = []
  mairie_email = []

  doc = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/val-d-oise.html"))

  doc.css('.lientxt').each do |link|
     city = link.content

     mairie_name << city

      city_doc = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/95/#{city.downcase.gsub(" ", "-")}.html"))
      email = city_doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text.strip
      mairie_email << email

end
  array = mairie_name.zip(mairie_email).map { |name, email| { name => email } }
  puts array
end

mairie_christmas