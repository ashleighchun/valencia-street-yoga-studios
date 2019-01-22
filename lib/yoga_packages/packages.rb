class YogaPackages::Packages
  attr_accessor :name, :price, :url

  def self.package_types
    self.scrape_packages
  end

  def self.scrape_packages
    packages = []

    packages << self.scrape_yoga_tree

    packages
  end

  def self.scrape_yoga_tree
    doc = Nokogiri::HTML(open("https://www.yogatreesf.com/location/valencia/#membership"))
    #pkgs = []
    #doc.css('div.product-list').each do |card|
      #card.css('div.product-line').each do |type|
        #class_name = type.css(".product-name").text
        #pkgs << class_name
        binding.pry
      #end
    #end
  end
end
