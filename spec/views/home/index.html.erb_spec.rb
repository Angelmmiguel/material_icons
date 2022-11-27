require 'spec_helper'

#
# Check if icon are rendered on home view
#
describe 'home/index' do
  before :each do
    render
  end

  it 'render the icons with the helper' do
    # Check if the icons exist
    expect(rendered).to have_selector('i.material-icons.r90', text: 'face')
    expect(rendered).to have_selector('i.material-icons.r90.md-24', text: 'face')
    expect(rendered).to have_selector('i.material-icons', text: '3d_rotation')
  end

  it 'renders other styles' do
    expect(rendered).to have_selector('i.material-icons.outlined', text: 'home')
    expect(rendered).to have_selector('i.material-icons.sharp', text: 'home')
    expect(rendered).to have_selector('i.material-icons.round', text: 'home')
    expect(rendered).to have_selector('i.material-icons.twotone', text: 'home')
  end

  it 'must render the using the safe_join method' do
    # Check the icons
    expect(rendered).to have_selector('i.material-icons', text: 'book')
    expect(rendered).to have_selector('i.material-icons', text: 'send')
  end
end
