Pod::Spec.new do |s|
  s.name         = "GDTableView"
  s.version      = "1.0.0"
  s.summary      = "An extension of NSTableView."
  s.description  = "An extension of NSTableView that notifies the parent controller when the list reaches the end to add functionality to table views like 'load more'."
  s.homepage     = "https://github.com/alicin/GDTableView"
  s.license      = { :type => "MIT", :file => "LICENCE" }

  s.author             = { "Ali Can Bardakci" => "alicanbardakci@gmail.com" }
  s.social_media_url   = "http://twitter.com/alican"

  s.platform     = :osx, "10.10"
  s.source       = { :git => "https://github.com/alicin/GDTableView.git", :tag => "#{s.version}" }
  s.source_files  = "GDTableView", "GDTableView/**/*.{h,m,swift}"
  s.exclude_files = "GDTableView/Exclude"
end
