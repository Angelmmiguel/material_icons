require 'spec_helper'

#
# Check if the fonts are served on dummy APP
#
describe 'Home with icons', type: :request do
  it 'serve TTF font' do
    get '/assets/MaterialIcons-Regular.ttf'
    expect(response.content_length).to be > 0
    expect(response).to have_http_status(200)
  end

  it 'serve WOFF font' do
    get '/assets/MaterialIcons-Regular.woff'
    expect(response.content_length).to be > 0
    expect(response).to have_http_status(200)
  end

  it 'serve WOFF2 font' do
    get '/assets/MaterialIcons-Regular.woff2'
    expect(response.content_length).to be > 0
    expect(response).to have_http_status(200)
  end
end
