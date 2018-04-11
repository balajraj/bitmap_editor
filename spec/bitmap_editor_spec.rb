

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
  end
end