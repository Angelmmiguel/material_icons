require 'spec_helper'

# Test for main class
describe MaterialIcon do
  describe "Icons with existing methods" do
    # Style icon
    describe "Style" do
      it "should set the icon name when the method has no params" do
        mi = MaterialIcon.new
        # Set the icon and style
        res = mi.style
        # Check icon
        expect(mi.instance_variable_get('@icon')).to eq 'style'
        expect(res.class).to eq MaterialIcon
      end

      it "should call style when the method has params" do
        mi = MaterialIcon.new
        css_style = 'margin-top: 10px;'
        # Set the icon and style
        mi.style(css_style)
        # Check icon
        expect(mi.instance_variable_get('@style')).to eq css_style
      end
    end

    # Send icon
    describe "Send" do
      it "should set the icon name when the method has no params" do
        mi = MaterialIcon.new
        # Set the icon and style
        res = mi.send
        # Check icon
        expect(mi.instance_variable_get('@icon')).to eq 'send'
        expect(res.class).to eq MaterialIcon
      end

      it "should call to send when the method has params" do
        mi = MaterialIcon.new
        css_style = 'margin-top: 10px;'
        # Set the icon and style
        mi.send :style, css_style
        # Check icon
        expect(mi.instance_variable_get('@style')).to eq css_style
      end

      it "should return the correct response" do
        mi = MaterialIcon.new
        # Send with name and arguments
        res = mi.send :equal?, mi
        expect(res).to eq true
        # Send with arguments
        res2 = mi.send :inspect
        expect(res2.class).to eq String
        # Only send
        res3 = mi.send
        expect(res3.class).to eq MaterialIcon
      end
    end
  end
end
