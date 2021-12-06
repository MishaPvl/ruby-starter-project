require_relative 'view'

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
    @quit = gets.chomp
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

  def check_input(value, scale, new_scale)
    abort 'Temperature must be numeric value!' if check_temperature(value) == false
    abort 'Incorrect scale!' if check_in_degree_type(scale) == false
    abort 'Incorrect scale!' if check_out_degree_type(new_scale) == false
  end
end
