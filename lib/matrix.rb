


class Matrix

  def initialize(x,y)
    if  x < 1 || x > 250
        raise ArgumentError, 'rows size is invalid'
    end
    if y < 1 || y > 250
        raise ArgumentError, 'columns size is invalid'
    end
    @matrix = Array.new(x) { Array.new(y ,'O') }
  end

  def printMatrix
     print @matrix
  end

end