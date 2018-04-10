


class Matrix

  def initialize(x,y)
    if  x < 1 || x > 250
        raise ArgumentError, 'rows size is invalid'
    end
    if y < 1 || y > 250
        raise ArgumentError, 'columns size is invalid'
    end
    @rows = x
    @cols = y
    @matrix = Array.new(x) { Array.new(y ,'O') }
  end



  def printMatrix
     print @matrix
  end

  def colorCell(x,y,color)
    if x < 1 || x > @rows
      raise ArgumentError, 'row size is invalid'
    end
    if y < 1 || y > @cols
      raise ArgumentError, 'cols size is invalid'
    end

    @matrix[x-1][y-1] = color
  end

end