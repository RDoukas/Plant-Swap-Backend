class Api::AdCategoriesController < ApplicationController

 def create
  @ad_category = AdCategory.new(
  ad_id: params[:ad_id],
  category_id: params[:category_id]
  )
  if @ad_category.save 
   render json: {message: "it worked!"}
  else 
   render json: {errors: @ad_category.errors.full_messages}, status: :unprocessable_entity
   end 
 end 

end
