


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
     for i in 0..@rows-1
       for j in 0..@cols-1
         print @matrix[i][j]
       end
       print "\n"
     end
     print "\n"
  end

  def checkBounds (x,y,color)
    if x < 1 || x > @rows
      raise ArgumentError, 'row size is invalid'
    end
    if y < 1 || y > @cols
      raise ArgumentError, 'colssize is invalid'
    end
    if color.match('[A-Z]') == nil
      raise ArgumentError, 'invalid color passed'
    end
  end

  def colorCell(x,y,color)
    checkBounds(x,y,color)
    @matrix[x-1][y-1] = color
  end

  def colorVertical(x1,x2,y,color)
    if x2 < x1
      raise ArgumentError, 'end row should be greater than or equal to start row'
    end
    checkBounds(x1,y,color)
    checkBounds(x2,y,color)
    for i in x1-1..x2-1
      @matrix[i][y-1] = color
    end
  end

end