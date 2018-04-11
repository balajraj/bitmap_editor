require 'matrix'

RSpec.describe  Matrix ,"#creating/changing the bitmap" do

  context "test the matrix creation" do
    it "constructor creates a matrix with cols/rows initialized to O" do
      matrix = Matrix.new(1,1)
      bitmap = matrix.instance_variable_get(:@matrix)
      expect(bitmap[0][0]).to eq ('O')
    end
  end


end