require_relative 'view'
require_relative 'input'
require_relative 'converter'

class Start
  input = Input.new
  view = View.new
  view.welcome_text
  conv = Converter.new

  loop do
    view.enter_value_text
    value = input.inp_temperature
    abort 'Temperature must be numeric value!' if input.check_temperature(value) == false
    view.from_scale_text
    scale = input.inp_from_scale
    abort 'Incorrect scale!' if input.check_in_degree_type(scale) == false
    view.to_scale_text
    new_scale = input.inp_to_scale
    abort 'Incorrect scale!' if input.check_out_degree_type(new_scale) == false
    result = conv.convert(value, scale, new_scale)
    puts "#{value}#{scale} = #{result}#{new_scale}"
    view.quit_program
    quit = input.quit_program
    break if quit == 'q'
  end
end
