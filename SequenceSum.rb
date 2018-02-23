class SequenceSum
  def self.show_sequence(n)
    if n == 0
      joint_sequence = "0=0"
    elsif n < 0
      joint_sequence = "#{n}<0"
    else
      sequence_array = Array.new(0)
      sum = (0..n).step(1).reduce(:+)
      for i in 0..n
        sequence_array << i
      end
      joint_sequence = sequence_array.join("+") + " = " + "#{sum}"
    end
    return joint_sequence
  end
end


puts SequenceSum.show_sequence(0)
