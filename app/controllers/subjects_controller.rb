
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
    @subject = Subject.new
  end

  def create
    # Since the form is providing an array called subject due to using the helpers in new.html.erb we can access them as params[:subject]
    @subject = Subject.new(params[:subject])
    if @subject.save
      redirect_to(subjects_path)
    else
      # Calling render.new this way will render the new template without running the code in the new action, instead using any values that exist in
      # the create actions context. Here it doesn't matter but if the template relies on values from new we need to provide those or add the new above render
      render('new')
    end
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
