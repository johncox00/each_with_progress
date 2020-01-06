module CoreExtensions
  module EnumerableProgress
    def clean_print(string, *args)
      printf("\33[2K\r#{string}", *args)
    end

    def prog_bar(current, total, precision = 5)
      prec = 100 / precision
      each_percent = 100 / total.to_f
      percent = (current.to_f * each_percent).round
      return "[%-#{prec}s] %d%%", "=" * (percent.to_f / precision.to_f), percent
    end

    def print_progress_bar(current = 1, total = 1, prepend = '')
      prog, bar, percent = prog_bar(current, total)
      prepend = "#{prepend} " if prepend.length > 0
      clean_print("%s#{prog}", prepend, bar, percent)
      puts "\n" if percent == 100
    end

    def each_with_progress(prepend = '')
      self.each_with_index do |thing, i|
        self.print_progress_bar(i, self.count, prepend)
        yield(thing, i)
        self.print_progress_bar(i + 1, self.count, prepend)
      end
    end
  end
end
