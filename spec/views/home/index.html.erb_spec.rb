require 'spec_helper'

#
# Check if icon are rendered on home view
#
describe 'home/index.html.erb' do

  it 'render the icons with the helper' do
    render
    # Check if the icons exist
    expect(rendered).to have_selector('i.mi.r90', text: 'face')
    expect(rendered).to have_selector('i.mi.r90.md-24', text: 'face')
  end
end
