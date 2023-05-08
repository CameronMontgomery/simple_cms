
class SubjectsController < ApplicationController
  # When creating these actions we must ourselves what we want the action to do.

  # For this action we want for it go to the database and retrieve all of the Subjects to then display
  def index
    @subjects = Subject.order('position ASC')
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
end
