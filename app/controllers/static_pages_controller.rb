class StaticPagesController < ApplicationController
  def home
    if params[:collection_id].present?
      client = PexelsClient.new
      response = client.collection(params[:collection_id])
      @photos = response["media"]
    end
  end
end
