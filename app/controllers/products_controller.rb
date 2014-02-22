class ProductsController < ApplicationController
	def index
		
	end

	def new
		
	end

	def create
		@prod = Product.new(params[:product])
		@prod.save
		redirect_to @prod
	end

        def show
                @prod = Product.find(params[:id])
        end

	private
		def post_params
			params.require(:product).permit(:title, :text)
		end
end
