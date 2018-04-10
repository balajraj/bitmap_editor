require_relative 'matrix'

class BitmapEditor


  def checkForMatrix
    if @map == nil
       raise ArgumentError, 'bitmap is not initialized'
    end
  end

  def run(file)
    return puts "please provide correct file" if file.nil? || !File.exists?(file)

    File.open(file).each do |line|
      line = line.chomp
      tokens = line.split
      case tokens[0]
      when 'S'
        checkForMatrix
        @map.printMatrix
      when 'I'
        @map = Matrix.new(tokens[2].to_i,tokens[1].to_i)
      when 'L'
        checkForMatrix
        @map.colorCell(tokens[2].to_i, tokens[1].to_i, tokens[3])
      when 'V'
        checkForMatrix
        @map.colorVertical(tokens[2].to_i,tokens[3].to_i,tokens[1].to_i,tokens[4])
      when 'H'
        checkForMatrix
        @map.colorHorizontal(tokens[3].to_i,tokens[1].to_i,tokens[2].to_i,tokens[4])
      else
          puts 'unrecognised command :('
      end
    end
  end
end
