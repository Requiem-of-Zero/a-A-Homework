fish_arr = [ 'fish','fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']


def slug_octopus(fishes)
  fishes.each_with_index do |fish1, i1|
    max_length = true
    
    fishes.each_with_index do |fish2, i2|
      next if i1 == i2
      max_length = false if fish2.length > fish1.length
    end
    
    return fish1 if max_length
  end

class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |a, b| a <=> b }

    return self if count <= 1

    mid_idx = count / 2
    left = self[0...mid_idx].merge_sort(&prc)
    right = self[mid_idx..-1].merge_sort(&prc)

    Array.merge(left, right, &prc)
  end

  private
  def self.merge(left, right, &prc)
    merged = []

        until left.empty? || right.empty?
            if prc.call(left, right) == 1
                merged << right.shift
            else
                merged << left.shift
            end
        end
        merged + left + right
    end
end

