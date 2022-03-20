require 'spec_helper'

describe MaterialIcons::MaterialIconHelper do
  include MaterialIcons::MaterialIconHelper
  
  it 'generate the HTML code for an icon' do
    expect(mi.shape(:face).r90.to_s).to eq '<i class="material-icons r90">face</i>'
    expect(mi.shape('face').css_class('my_class').r90.to_s)
      .to eq '<i class="material-icons r90 my_class">face</i>'
  end
end
