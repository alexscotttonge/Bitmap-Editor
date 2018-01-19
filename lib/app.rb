require_relative 'bitmap'

class App

  def run(file)
    File.open(file).each_line.with_index(1) do |line, line_number|
      command, *args = line.chomp.split(" ")
      execute(command, *args)
    end
  end

  def execute(command, *args)

    args.map! do |arg|
      arg.to_i
    end

    case command
      when 'I'

      @bitmap = Bitmap.new
      @bitmap.build_grid(*args)
      @bitmap.create
    end
  end

end
