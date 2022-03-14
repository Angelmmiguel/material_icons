require 'spec_helper'

#
# Check if icon are rendered on home view
#
describe 'home/index' do
  before :each do
    render
  end

  context 'Ligature mode' do
    it 'render the icons with the helper' do
      # Check if the icons exist
      expect(rendered).to have_selector('i.material-icons.r90', text: 'face')
      expect(rendered).to have_selector('i.material-icons.r90.md-24', text: 'face')
      expect(rendered).to have_selector('i.material-icons', text: '3d_rotation')
    end

    it 'must render the using the safe_join method' do
      # Check the icons
      expect(rendered).to have_selector('i.material-icons', text: 'book')
      expect(rendered).to have_selector('i.material-icons', text: 'send')
    end
  end

  context 'Unicode mode' do
    before :all do
      # Change configt to unicode
      MaterialIcons.unicode = true
    end

    after :all do
      # Return unicode to false
      MaterialIcons.unicode = false
    end

    before :each do
      render
    end

    it 'render the icons with the helper' do
      # Check if the icons exist
      expect(rendered).to have_selector('i.material-icons.r90.face', text: '')
      expect(rendered).to have_selector('i.material-icons.r90.md-24.face', text: '')
      expect(rendered).to have_selector('i.material-icons.three_d_rotation', text: '')
    end

    it 'must render the using the safe_join method' do
      # Check the icons
      expect(rendered).to have_selector('i.material-icons.book', text: '')
      expect(rendered).to have_selector('i.material-icons.send', text: '')
    end
  end
end
