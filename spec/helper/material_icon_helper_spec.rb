require 'spec_helper'

describe MaterialIcons::MaterialIconHelper do
  include MaterialIcons::MaterialIconHelper
  
  it 'generate the HTML code for an icon' do
    expect(mi.face.r90.to_s).to eq '<i class="material-icons r90">face</i>'
    expect(mi.face.css_class('my_class').r90.to_s)
      .to eq '<i class="material-icons r90 my_class">face</i>'
    # On minor verions than Rails 4.2.0, the order of class/style inline
    # attributes changes.
    if Rails.version < '4.2.0'
      expect(mi.face.css_class('my_class').style('margin-left: 10px;').r90.to_s)
        .to eq '<i class="material-icons r90 my_class" style="margin-left: 10px;">face</i>'
    else
      expect(mi.face.css_class('my_class').style('margin-left: 10px;').r90.to_s)
        .to eq '<i style="margin-left: 10px;" class="material-icons r90 my_class">face</i>'
    end
  end
end
