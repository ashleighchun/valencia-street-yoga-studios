class YogaPackages::Packages
  attr_accessor :name, :price, :url

  def self.package_types
    self.scrape_packages
  end

  def self.scrape_packages
    packages = []

    packages << self.scrape_yogatree_1

    packages
  end

  def self.scrape_yogatree_01
    names_list = []
    price_list = []
    doc = Nokogiri::HTML(open("https://www.yogatreesf.com/location/valencia/#membership"))
    css = doc.css('div.product-list').text

    doc.css(".product-name").each do |pkg|
      names_list << pkg.text
    end

    doc.css(".product-price").each do |cost|
      price_list << cost.text
    end

    name = "Yoga Tree Package 1: #{names_list[1]}"
    price = "#{price_list[1]}"
  end

  def self.scrape_yogatree_02
    names_list = []
    price_list = []
    doc = Nokogiri::HTML(open("https://www.yogatreesf.com/location/valencia/#membership"))
    css = doc.css('div.product-list').text

    doc.css(".product-name").each do |pkg|
      names_list << pkg.text
    end

    doc.css(".product-price").each do |cost|
      price_list << cost.text
    end

    name = "Yoga Tree Package 2: #{names_list[3]}"
    price = "#{price_list[3]}"
    binding.pry
  end

  def self.scrape_lovestory_01
    names_list = []
    price_list = []
    doc = Nokogiri::HTML(open("https://www.lovestoryyoga.com/classes/"))
    css = doc.css('div.text-align-center').text
    binding.pry
  end

  #def self.scrape_lovestory_02

  #end
end
