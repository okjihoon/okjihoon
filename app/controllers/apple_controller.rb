class AppleController < ApplicationController
    before_action:home, only:[:index]
    
    
    def index
        @mouse=Samsung.all
        @po=Mode.all
        @po2=Mode2.all
        @po3=Mode3.all
    end
    
    def create
        @mouse=Samsung.new
        @mouse.content=params[:title]
        @mouse.title =params[:content]
        @mouse.save
    end
    def new
    end
    def show
        @mouse=Samsung.find(params[:samsung_id])
        @every = Answer.where(samsung_id: params[:samsung_id])
        @ad = Comment.all
    end
    def destroy
        @mouse=Samsung.find(params[:samsung_id])
        @mouse.destroy
        redirect_to '/'
    end
    def edit
        @mouse=Samsung.find(params[:samsung_id])
    end
    def edit2
        @mouse=Samsung.new
        @mouse.title=params[:title]
        @mouse.content=params[:content]
        @mouse.save
         redirect_to '/'
    end
    
    def create2
        @po=Mode.new
        @po.title=params[:title]
        @po.content=params[:content]
        @po.save
    end
    def new2
    end
    def show2
         @po=Mode.find(params[:mode_id])
    end
    def destroy2
        @po=Mode.find(params[:mode_id])
        @po.destroy
        redirect_to '/'
    end
    def edd2
        @po=Mode.find(params[:mode_id])
    end
    def edd22
    @po=Mode.new
        @po.title=params[:title]
        @po.content=params[:content]
        @po.save
        redirect_to '/'
    end
    def create3
        @po2=Mode2.new
        @po2.title=params[:title]
        @po2.content=params[:content]
        @po2.save
    end
    def new3
    end
    def show3
         @po2=Mode2.find(params[:mode2_id])
    end
    def destroy3
        @po2=Mode2.find(params[:mode2_id])
        @po2.destroy
        redirect_to '/'
    end
    def edd3
        @po2=Mode2.find(params[:mode2_id])
    end
    def edd33
        @po2=Mode2.new
        @po2.title=params[:title]
        @po2.content=params[:content]
        @po2.save
        redirect_to '/'
    end
   
    def create4
        @po3=Mode3.new
        @po3.title=params[:title]
        @po3.content=params[:content]
        @po3.save
    end
    def new4
    end
    def show4
         @po3=Mode3.find(params[:mode3_id])
    end
    def destroy4
        @po3=Mode3.find(params[:mode3_id])
        @po3.destroy
        redirect_to '/'
    end
    def edd4
        @po3=Mode3.find(params[:mode3_id])
    end
    def edd44
        @po3=Mode3.new
        @po3.title=params[:title]
        @po3.content=params[:content]
        @po3.save
        redirect_to '/'
    end
    

    
end
