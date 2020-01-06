require_relative 'core_extensions/enumerable_progress'

ObjectSpace.each_object(Class).select { |c| c.included_modules.include? Enumerable }.each do |klazz|
  klazz.include CoreExtensions::EnumerableProgress
end
