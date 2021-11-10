class Public::HomesController < ApplicationController
  def top
    @shop = Shop.find(Favorite.group(:shop_id).order('count(shop_id) desc').limit(4).pluck(:shop_id))
    @reviews = Review.all.order(created_at: :desc)
    @review_shop = Shop.find(Review.group(:shop_id).order(created_at: :desc).limit(8).pluck(:shop_id))
  end
end
