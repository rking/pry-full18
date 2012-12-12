# encoding: utf-8
Gem::Specification.new do |s|
  deps = YAML.load_file('in.yml')
  s.name          = 'pry-full18'
  s.version       = 1.0
  s.summary       = 'A metagem; Pry + all plugins that work on Ruby 1.8'
  s.description   = deps.keys.join ' + '
  s.homepage      = 'https://github.com/rking/pry-full18'
  s.email         = 'rking-pry-full18@sharpsaw.org'
  s.authors       = ['☈king']
  s.files         = Dir['lib/*']
  s.executables   = Dir['bin/*'].map {|e| e.sub 'bin/', ''}
  deps.each do |name,body|
    if ver = body['version']
      s.add_dependency name, ver
    else
      s.add_dependency name
    end
  end
  s.add_dependency 'ruby18_source_location'
end
