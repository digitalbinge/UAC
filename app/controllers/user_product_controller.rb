class UserProductController < ApplicationController

	def add_product
		if UserProduct.create(user_id: current_user.id, product_id: params[:product_id], quantity: params[:qty], size: params[:size])
			redirect_to product_path(params[:product_id]), notice: 'Added to cart'
		end
	end

	def cart
		@cart_items = UserProduct.all
	end

	def edit
		
	end

	def show
		
	end

end
