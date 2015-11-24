Pod::Spec.new do |s|

  s.name         = "TCTitleLoading"
  s.version      = "0.0.1"
  s.summary      = "This is a loading in the bottom of navigation bar title area."

  s.description  = <<-DESC
    Make you navigationbar has a loading view under title. You can custom the loading dots color and appoint which page to skip.
                   DESC

  s.homepage     = "http://www.travelchu.com/2015/11/23/tctitleloading/"
  s.screenshots  = "http://travelchu.com/ImagesForProjects/TCTitleLoading.png"

  s.license      = "MIT"

  s.author             = { "Travel.Chu" => "chuchuanming@gmail.com" }
  s.social_media_url   = "https://www.facebook.com/chuanming.chu"

  s.platform     = :ios, "5.0"

  s.source       = { :git => "https://github.com/TravelC/TCTitleLoading.git", :tag => "0.0.1" }


  s.source_files  = "TCTitleLoading/TCTitleLoading/**/*.{h,m}"
  s.public_header_files = "TCTitleLoading/TCTitleLoading/**/*.h"

   s.frameworks = "Foundation", "UIKit"


   s.requires_arc = true

end
