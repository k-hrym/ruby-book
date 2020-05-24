module Effects
  def self.reverse
    ->(words) do
      words.split(' ').map(&:reverse).join(' ')
    end
  end

  def self.echo(n)
    ->(words) do
      words.chars.map{|c| c==' ' ? c : c*n}.join
    end
  end

  def self.loud(s)
    ->(words) do
      words.split(' ').map{|word| word.upcase + "!"*s}.join(' ')
    end
  end
end
