class StudentsController < ApplicationController

    def index
        @student = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        student = Student.new(student_params)
        if student.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show
        @student = Student.find(params[:id])
      end
    
      private
      def student_params
        params.require(:student).permit(:name,:profile,:mentor,:grade)
    end
end
