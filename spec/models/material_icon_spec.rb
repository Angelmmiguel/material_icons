require 'spec_helper'

# Test for main class
describe MaterialIcon do
  describe 'Icons with existing methods' do
    # Style icon
    describe '#Style' do
      it 'should sets the style' do
        mi = MaterialIcon.new
        css_style = 'margin-top: 10px;'
        # Set the icon and style
        mi.style(css_style)
        # Check icon
        expect(mi.instance_variable_get('@style')).to eq css_style
      end
    end

    # Shape styles icon
    describe '#outlined' do
      it 'should sets the class' do
        mi = MaterialIcon.new
        # Set the icon and style
        mi.outlined
        # Check icon
        expect(mi.instance_variable_get('@css_class')).to eq ' outlined'
      end
    end

    describe '#sharp' do
      it 'should sets the class' do
        mi = MaterialIcon.new
        # Set the icon and style
        mi.sharp
        # Check icon
        expect(mi.instance_variable_get('@css_class')).to eq ' sharp'
      end
    end

    describe '#round' do
      it 'should sets the class' do
        mi = MaterialIcon.new
        # Set the icon and style
        mi.round
        # Check icon
        expect(mi.instance_variable_get('@css_class')).to eq ' round'
      end
    end

    describe '#twotone' do
      it 'should sets the class' do
        mi = MaterialIcon.new
        # Set the icon and style
        mi.twotone
        # Check icon
        expect(mi.instance_variable_get('@css_class')).to eq ' twotone'
      end
    end

    # Send icon
    describe '#send method' do
      it 'should call to send method' do
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
      end
    end

    # Array join must be executed without any bug
    describe '#to_str' do
      it 'should call to_s instead of executing method_missing' do
        mi = MaterialIcon.new
        res = mi.shape(:face).to_str
        expect(res).to eq mi.to_s
      end

      it 'the class should works when we use Array.join' do
        mi = MaterialIcon.new
        mi2 = MaterialIcon.new
        expect([mi.shape(:face)].join).to eq mi.to_s
        expect([mi.shape(:face), mi2.shape(:send)].join).to eq "#{mi}#{mi2}"
      end
    end
  end
end
