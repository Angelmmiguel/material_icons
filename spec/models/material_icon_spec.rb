require 'spec_helper'

# Test for main class
describe MaterialIcon do

  it "should set the icon name to 'style' when style method has no params" do
    mi = MaterialIcon.new
    css_style = 'margin-top: 10px;'
    # Set the icon and style
    mi.style
    mi.style(css_style)
    # Check icon
    expect(mi.instance_variable_get('@icon')).to eq 'style'
    expect(mi.instance_variable_get('@style')).to eq css_style
  end
end
