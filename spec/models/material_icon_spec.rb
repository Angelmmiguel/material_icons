require 'spec_helper'

# Test for main class
describe MaterialIcon do
  describe 'Icons with existing methods' do
    # Style icon
    describe '#Style' do
      it 'should set the icon name when the method has no params' do
        mi = MaterialIcon.new
        # Set the icon and style
        res = mi.style
        # Check icon
        expect(mi.instance_variable_get('@icon')).to eq 'style'
        expect(res.class).to eq MaterialIcon
      end

      it 'should call style when the method has params' do
        mi = MaterialIcon.new
        css_style = 'margin-top: 10px;'
        # Set the icon and style
        mi.style(css_style)
        # Check icon
        expect(mi.instance_variable_get('@style')).to eq css_style
      end
    end

    # Send icon
    describe '#send' do
      it 'should set the icon name when the method has no params' do
        mi = MaterialIcon.new
        # Set the icon and style
        res = mi.send
        # Check icon
        expect(mi.instance_variable_get('@icon')).to eq 'send'
        expect(res.class).to eq MaterialIcon
      end

      it 'should call to send when the method has params' do
        mi = MaterialIcon.new
        css_style = 'margin-top: 10px;'
        # Set the icon and style
        mi.send :style, css_style
        # Check icon
        expect(mi.instance_variable_get('@style')).to eq css_style
      end

      it 'should return the correct response' do
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

    # Class icon
    describe '#class_icon' do

      it 'should set the class icon when the method has no params' do
        mi = MaterialIcon.new
        # Set the icon and style
        res = mi.class_icon
        # Check icon
        expect(mi.instance_variable_get('@icon')).to eq 'class'
        expect(res.class).to eq MaterialIcon
      end

      it 'should set the class icon and style' do
        mi = MaterialIcon.new
        css_style = 'margin-top: 10px;'
        # Set the icon and style
        mi.class_icon.style css_style
        # Check icon
        expect(mi.instance_variable_get('@icon')).to eq 'class'
        expect(mi.instance_variable_get('@style')).to eq css_style
      end
    end

    # Array join must be executed without any bug
    describe '#to_str' do

      it 'should call to_s instead of executing method_missing' do
        mi = MaterialIcon.new
        res = mi.face.to_str
        expect(res).to eq mi.to_s
      end

      it 'the class should works when we use Array.join' do
        mi = MaterialIcon.new
        mi2 = MaterialIcon.new
        expect([mi.face].join).to eq mi.to_s
        expect([mi.face, mi2.send].join).to eq "#{mi}#{mi2}"
      end
    end
  end
end
