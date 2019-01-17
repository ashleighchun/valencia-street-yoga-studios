#CLI controller

class YogaPackages::CLI

  def call
    puts "Valencia Street Yoga Studio Packages"
    list_package_types
    menu
    goodbye
  end

  def list_package_types
    puts "Yoga Studio Package Types:"
    @packages = YogaPackages::Packages.package_types
    @packages.each.with_index(1) do |package, i|
      puts "#{i}. #{package.name} - #{package.price}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "enter the number of the package you would like more info on or type list to see the packages again or type exit:"
      input = gets.strip.downcase
      if input.to_i>0
        the_package = @packages[input.to_i-1]
        puts "#{the_package.name} - #{the_package.price}"
      elsif input == "list"
        list_package_types
      else
        puts "not sure what you want, type list or exit"
      end
    end
  end

  def goodbye
    puts "See you in class!"
  end
end
