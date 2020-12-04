def bubble_sort(value)
    result = true
    while result do
      i = 0
      result = false
      while i < (value.length - 1)
        if value[i] > value[i + 1]
          value[i], value[i + 1] = value[i + 1], value[i]
          result = true
        end
        i += 1
      end
    end
    value
  end

  puts bubble_sort([4, 9, 7, 2, 1, 10, 6])

  def bubble_sort_by(value)
    result = true
    while result do
      v = 0
      result = false
      while v < (value.length - 1)
        if (yield value[v],value[v + 1]).positive?
          value[v], value[v + 1] = value[v + 1], value[v]
          result = true
        end
        v += 1
      end
    end
    value
  end

  p bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
