class YogaPackages::Packages
  attr_accessor :name, :price, :url

  def self.package_types
    #scrape websites and return packages based on that data
    self.scrape_packages
  end


  def self.scrape_packages
    packages = []

    package_1 = self.new
    package_1.name = "Yoga Tree: 10 Class Package"
    package_1.price = "$190"
    package_1.url = "https://www.yogatreesf.com/location/valencia/#membership"

    package_2 = self.new
    package_2.name = "Yoga Tree: Monthly Unlimited Package"
    package_2.price = "$155/month"
    package_2.url = "https://www.yogatreesf.com/location/valencia/#membership"

    package_3 = self.new
    package_3.name = "Love Story Yoga: 10 Class Package"
    package_3.price = "$164"
    package_3.url = "https://www.lovestoryyoga.com/classes/"

    package_4 = self.new
    package_4.name = "Love Story Yoga: Monthly Unlimited Package"
    package_4.price = "$164/month"
    package_4.url = "https://www.lovestoryyoga.com/classes/"

    packages
  end

end
