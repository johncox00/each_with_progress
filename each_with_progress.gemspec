Gem::Specification.new do |s|
  s.name        = 'each_with_progress'
  s.version     = '0.0.3'
  s.date        = '2020-01-06'
  s.summary     = "Adds progress bar output to Enumerable each functions."
  s.description = "Adds progress bar output to Enumerable each functions."
  s.authors     = ["John Cox"]
  s.email       = 'johncox@gmail.com'
  s.files       = ["lib/each_with_progress.rb"]
  s.files       += Dir['lib/*.rb']
  s.files       += Dir['lib/core_extensions/**/*']
  s.homepage    =
    'https://github.com/johncox00/each_with_progress'
  s.license       = 'MIT'
end
