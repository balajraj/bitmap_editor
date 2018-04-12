require 'matrix'

RSpec.describe  Matrix ,"#creating/changing the bitmap" do

  context "test the matrix creation/modification" do

    it "constructor creates a matrix with cols/rows initialized to O" do
      matrix = Matrix.new(1,1)
      bitmap = matrix.instance_variable_get(:@matrix)
      expect(bitmap[0][0]).to eq ('O')
    end

    it "changes the cell color on specified x and y "do
      matrix = Matrix.new(5,5)
      matrix.colorCell( 4, 4, 'M')
      bitmap = matrix.instance_variable_get(:@matrix)
      expect(bitmap[3][3]).to eq ('M')
    end

    it "changes the cell color on veritical rows r1 to r2" do
      matrix = Matrix.new(5,5)
      matrix.colorVertical( 4, 5, 3,'X')
      bitmap = matrix.instance_variable_get(:@matrix)
      expect(bitmap[3][2]).to eq ('X')
      expect(bitmap[4][2]).to eq ('X')
    end

    it "changes the cell color on horizontal cols c1 to c2" do
      matrix = Matrix.new(3,3)
      matrix.colorHorizontal( 1, 2, 3,'D')
      bitmap = matrix.instance_variable_get(:@matrix)
      expect(bitmap[0][1]).to eq ('D')
      expect(bitmap[0][2]).to eq ('D')
    end
  end


end