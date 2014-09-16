class StudentsController < ApplicationController
	def create
      @name = params[:name]
    unless @name.blank?
      @program = params[:id][:program_id]
      @student = Student.create({:name => @name, :program_id => @program})
    end

    @students = Student.all
		@programs = Program.all
	end
end
