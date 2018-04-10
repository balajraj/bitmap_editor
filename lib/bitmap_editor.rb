require_relative 'matrix'

class BitmapEditor



  def run(file)
    return puts "please provide correct file" if file.nil? || !File.exists?(file)

    File.open(file).each do |line|
      line = line.chomp
      tokens = line.split
      case tokens[0]
      when 'S'
        @map.printMatrix
      when 'I'
        @map = Matrix.new(tokens[2].to_i,tokens[1].to_i)
      when 'L'
        @map.colorCell(tokens[2].to_i, tokens[1].to_i, tokens[3])
      else
          puts 'unrecognised command :('
      end
    end
  end
end
