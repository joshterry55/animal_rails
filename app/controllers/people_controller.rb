class PeopleController < ApplicationController
  before_action :set_person, except: [:index, :new, :create]


  def index
    @people = Person.all.by_name
  end

  def show
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to person_path(@person)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @person.update(person_params)
      redirect_to person_path(@person)
    else
      render :edit
    end
  end

  def destroy
    @person.destroy
    redirect_to people_path(@person)
  end

  private
  def person_params
    params.require(:person).permit(:name, :age, :gender, :alive)
  end

  def set_person
    @person = Person.find(params[:id])
  end
end
