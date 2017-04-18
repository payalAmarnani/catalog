class PageController < ApplicationController
  
# Home Page
  def main
  	
  end
# Displays all Catalog Items
  def catalog_item
  	@products=Product.all
  end
end
