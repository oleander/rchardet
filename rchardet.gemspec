# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name             = "rchardet19"
  s.version          = "1.3.7"
  s.authors          = ["Jeff Hodges", "Édouard Brière", "Linus Oleander"]
  s.email            = "linus@oleander.nu"
  s.homepage         = "https://github.com/oleander/rchardet"
  s.platform         = Gem::Platform::RUBY
  s.summary          = "Ruby 1.9 compatible character encoding auto-detection library"
  s.description      = "Ruby 1.9 compatible character encoding auto-detection library. This library is a port of the auto-detection code in Mozilla. It means taking a sequence of bytes in an unknown character encoding, and attempting to determine the encoding so you can read the text. It’s like cracking a code when you don’t have the decryption key."
  s.files            = `git ls-files`.split("\n")
  s.test_files       = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables      = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths    = ["lib"]
  s.has_rdoc         = false # TODO: fix
  s.extra_rdoc_files = ['README.markdown', 'COPYING']
  s.license          = 'LGPL-2.1'
  
  s.add_development_dependency('rspec')
end
