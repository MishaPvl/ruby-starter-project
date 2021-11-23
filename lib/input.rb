class Input
  attr_reader :temperature, :from_scale, :to_scale

  def inp_temperature
    @temperature = gets.chomp
  end

  def inp_from_scale
    @from_scale = gets.chomp.upcase
  end

  def inp_to_scale
    @to_scale = gets.chomp.upcase
  end

  def quit_program
    gets.chomp
  end

  def check_temperature(value)
    return false unless value[/^?[0-9]+$/]

    true
  end

  def check_in_degree_type(scale)
    %w[F K C].include? scale
  end

  def check_out_degree_type(scale)
    %w[F K C].include?(scale)
  end
end
