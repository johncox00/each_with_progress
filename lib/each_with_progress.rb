require_relative 'core_extensions/enumerable_progress'

# There's probably a better way to do this. By all means submit a PR if you know of one...
ObjectSpace.each_object(Class).select { |c| c.included_modules.include? Enumerable }.each do |klazz|
  klazz.include CoreExtensions::EnumerableProgress
end
