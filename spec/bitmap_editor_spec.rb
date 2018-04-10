

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
  end
end