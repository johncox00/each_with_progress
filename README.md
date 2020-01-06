# Making progress

This is a simple little gem that adds progress bar output to `Enumerable`s.

What you get...

You can call `.each_with_progress` on an `Enumerable` instance, like an `Array`, and pass in text you want prepended to your progress bar and a block that will be called using `each_with_index`. So something like this:

```
def some_func(_thing)
  sleep(1)
end

collector = []

some_array = ['foo', 'bar', 'baz', 'qux', 'more', 'things', 'to', 'see', 'here', 'done!']

some_array.each_with_progress('This takes a while... ') do |item, index|
  some_func(item)
  collector << item
  collector << "we got to the #{index + 1} item"
end

puts collector
```

The progress bar you see will be minimal and changes every 5%. Here's an example:

```
foo [=================   ] 85%
```
