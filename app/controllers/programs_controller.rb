class ProgramsController < ApplicationController
	def create
      @name = params[:name]
    unless @name.blank?
      @program = Program.create({:name => @name})
    end

    @programs = Program.all
	end
end
