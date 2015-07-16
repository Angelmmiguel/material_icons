require 'spec_helper'

describe MaterialIcons::MaterialIconHelper do
  include MaterialIcons::MaterialIconHelper

  context 'Ligatures mode' do
    it 'generate the HTML code for an icon' do
      expect(mi.face.r90.to_s).to eq '<i class="material-icons r90">face</i>'
      expect(mi.face.css_class('my_class').r90.to_s)
        .to eq '<i class="material-icons r90 my_class">face</i>'
      expect(mi.face.css_class('my_class').style('margin-left: 10px;').r90.to_s)
        .to eq '<i style="margin-left: 10px;" class="material-icons r90 my_class">face</i>'
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

    it 'generate the HTML code for an icon' do
      expect(mi.face.r90.to_s).to eq '<i class="material-icons face r90"></i>'
      expect(mi.face.css_class('my_class').r90.to_s)
        .to eq '<i class="material-icons face r90 my_class"></i>'
      expect(mi.face.css_class('my_class').style('margin-left: 10px;').r90.to_s)
        .to eq '<i style="margin-left: 10px;" class="material-icons face r90 my_class"></i>'
    end
  end
end
