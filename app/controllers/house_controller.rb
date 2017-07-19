class HouseController < ApplicationController
    def create
        @mouse = Answer.new
        @mouse.review = params[:review]
        @mouse.samsung_id = params[:samsung_id]
        @mouse.save
        redirect_to "/apple/show/#{params[:samsung_id]}"
    end
    
    def destroy
        @mouse = Answer.find(params[:answer_id])
        @mouse.destroy
        redirect_to "/apple/show/#{params[:id]}"
    end
    
    def create2
        @ad = Comment.new
        @ad.review2 = params[:review2]
        @ad.answer_id = params[:answer_id]
        @ad.save
        redirect_to "/apple/show/#{params[:samsung_id]}"
    end
    
end