require 'spec_helper'

#
# Check if icon are rendered on home view
#
describe 'home/index.html.erb' do

  context 'Ligature mode' do
    it 'render the icons with the helper' do
      render
      # Check if the icons exist
      expect(rendered).to have_selector('i.mi.r90', text: 'face')
      expect(rendered).to have_selector('i.mi.r90.md-24', text: 'face')
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

    it 'render the icons with the helper' do
      render
      # Check if the icons exist
      expect(rendered).to have_selector('i.mi.r90.face', text: '')
      expect(rendered).to have_selector('i.mi.r90.md-24.face', text: '')
    end
  end
end
