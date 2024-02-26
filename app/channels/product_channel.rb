# This class represents a channel for handling product-related actions.
class ProductChannel < ApplicationCable::Channel
  def subscribed
    stream_from "product_#{params[:room]}"
  end
end
