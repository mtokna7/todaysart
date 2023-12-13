require 'httparty'

class ArtworksController < ApplicationController
  def index; end

  def show
    @artwork = fetch_random_object
  end

  private

  def fetch_random_object
    response = HTTParty.get('https://collectionapi.metmuseum.org/public/collection/v1/objects')
    data = JSON.parse(response.body)

    loop do
      random_object_id = data['objectIDs'].sample
      object_response = HTTParty.get("https://collectionapi.metmuseum.org/public/collection/v1/objects/#{random_object_id}")
      object_data = JSON.parse(object_response.body)

      if object_data['artistDisplayName'].present? && object_data['primaryImage'].present?
        return object_data
      end
    end
  end
end
