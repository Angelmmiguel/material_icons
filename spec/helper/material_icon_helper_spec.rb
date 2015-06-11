require 'spec_helper'
 
describe MaterialIcons::MaterialIconHelper do
  include MaterialIcons::MaterialIconHelper

  context 'Ligatures mode' do
    it 'generate the HTML code for an icon' do
      expect(mi.face.r90.to_s).to eq '<i class="mi r90">face</i>'
    end
  end

  context 'Unicode mode' do
    before :each do
      # Change configt to unicode
      MaterialIcons.unicode = true
    end

    it 'generate the HTML code for an icon' do
      expect(mi.face.r90.to_s).to eq '<i class="mi face r90"></i>'
    end
  end
end
