class PageController < ApplicationController
  
# Home Page
  def main
  	
  end
# Displays all Catalog Items
  def catalog_item
  	if params[:search]
  		 @products = Product.search(params[:search])
  	else
  		@products=Product.all
  	end
  end
end
