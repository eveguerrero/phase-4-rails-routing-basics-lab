class StudentsController < ApplicationController
    def index 
        students = Student.all 
        render json: students
    end

    def grades 
        grades = Student.all.sort_by do |s|
            s[:grade]
          end
        render json: grades 
    end
end
