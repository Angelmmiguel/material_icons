require 'spec_helper'

#
# Check if the fonts are served on dummy APP
#
describe 'Home with icons', type: :request do
  context 'regular icons' do
    it 'serve WOFF font' do
      get '/assets/material-icons-regular.woff'
      expect(response.content_length).to be > 0
      expect(response).to have_http_status(200)
    end

    it 'serve WOFF2 font' do
      get '/assets/material-icons-regular.woff2'
      expect(response.content_length).to be > 0
      expect(response).to have_http_status(200)
    end
  end

  context 'outlined icons' do
    it 'serve WOFF font' do
      get '/assets/material-icons-outlined.woff'
      expect(response.content_length).to be > 0
      expect(response).to have_http_status(200)
    end

    it 'serve WOFF2 font' do
      get '/assets/material-icons-outlined.woff2'
      expect(response.content_length).to be > 0
      expect(response).to have_http_status(200)
    end
  end

  context 'sharp icons' do
    it 'serve WOFF font' do
      get '/assets/material-icons-sharp.woff'
      expect(response.content_length).to be > 0
      expect(response).to have_http_status(200)
    end

    it 'serve WOFF2 font' do
      get '/assets/material-icons-sharp.woff2'
      expect(response.content_length).to be > 0
      expect(response).to have_http_status(200)
    end
  end

  context 'round icons' do
    it 'serve WOFF font' do
      get '/assets/material-icons-round.woff'
      expect(response.content_length).to be > 0
      expect(response).to have_http_status(200)
    end

    it 'serve WOFF2 font' do
      get '/assets/material-icons-round.woff2'
      expect(response.content_length).to be > 0
      expect(response).to have_http_status(200)
    end
  end

  context 'twotone icons' do
    it 'serve WOFF font' do
      get '/assets/material-icons-twotone.woff'
      expect(response.content_length).to be > 0
      expect(response).to have_http_status(200)
    end

    it 'serve WOFF2 font' do
      get '/assets/material-icons-twotone.woff2'
      expect(response.content_length).to be > 0
      expect(response).to have_http_status(200)
    end
  end
end
