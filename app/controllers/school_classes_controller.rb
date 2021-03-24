class SchoolClassesController < ApplicationController
    def index
        @schoolclasses = SchoolClass.all 
    end

    def new
        @schoolclass = SchoolClass.new
    end

    def show
        @schoolclass = SchoolClass.find(params[:id])
    end

    def create
        @schoolclass = SchoolClass.create(params[:title, :room_number])
        @schoolclass.save
    end

    def edit
        @schoolclass = SchoolClass.find(params[:id])
    end

    def update
        @schoolclass = SchoolClass.find(params[:id])
	    @schoolclass.update(params.require(:schoolclass).permit(:title, :room_number))
	    redirect_to post_path(@schoolclass)
    end

    private

    def post_params(*args)
        params.require(:schoolclass).permit(*args)
    end 
end
