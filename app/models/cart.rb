class Cart < ApplicationRecord
	has_many :cart_items

	def add_product(product_params)

		current_item = cart_items.find_by(product_id: product_params[:name][:product_id])

		if current_item
			current_item.qty += product_params[:product][:qty].to_i
			current_item.save
		else
			new_item = cart_items.create(product_id: product_params[:name][:product_id], qty: product_params[:name][:qty], cart_id: self.id)
		end

		new_item
	end
end
