

require 'bitmap_editor'

RSpec.describe  BitmapEditor ,"#inputs" do
  context "test the inputs" do
    it "throws exception when matrix is not initialized" do
      bitmapEdit = BitmapEditor.new
      file1 = "spec/testinput/test1.txt"
      expect{
        bitmapEdit.run file1
      }.to raise_error(ArgumentError,"bitmap is not initialized")
    end

    it "throws exception when row value to initialize matrix is non integer" do
      bitmapEdit = BitmapEditor.new
      file2 = "spec/testinput/test2.txt"
      expect {
        bitmapEdit.run file2
      }.to raise_error(ArgumentError,"rows size is invalid")
    end

    it "throws exception when col value to initialize matrix is non integer" do
      bitmapEdit = BitmapEditor.new
      file3 = "spec/testinput/test3.txt"
      expect {
        bitmapEdit.run file3
      }.to raise_error(ArgumentError,"columns size is invalid")
    end

    it "throws exception when trying to change color outside range" do
      bitmapEdit = BitmapEditor.new
      file4 = "spec/testinput/test4.txt"
      expect {
        bitmapEdit.run file4
      }.to raise_error(ArgumentError,"cols size is invalid")
    end

    it "throws exception when trying to create matrix size out of range" do
      bitmapEdit = BitmapEditor.new
      file5 = "spec/testinput/test5.txt"
      expect {
        bitmapEdit.run file5
      }.to raise_error(ArgumentError,"columns size is invalid")
    end
    it "throws exception when trying to change vertical r2 is less than r1" do
      bitmapEdit = BitmapEditor.new
      file6 = "spec/testinput/test6.txt"
      expect {
        bitmapEdit.run file6
      }.to raise_error(ArgumentError,"end row should be greater than or equal to start row")

    end
    it "throws exception when the given color is wrong" do
      bitmapEdit = BitmapEditor.new
      file7 = "spec/testinput/test7.txt"
      expect {
        bitmapEdit.run file7
      }.to raise_error(ArgumentError,"invalid color passed")
    end
  end
end