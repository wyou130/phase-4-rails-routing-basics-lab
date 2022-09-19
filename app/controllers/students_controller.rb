class StudentsController < ApplicationController

    def index
        render json: Student.all
    end

    def grades
        render json: Student.all.order(:grade).reverse
    end

    def highest_grade
        # byebug
        render json: Student.all.max_by{|s| s.grade}
    end

end
