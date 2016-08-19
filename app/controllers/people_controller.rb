class PeopleController < ApplicationController
  def index
    @people = Person.all
    #grabs all the people out of db
    #GET request
  end

  def show
    @person = Person.find(params[:id])
    #grabs single person out of db
    #GET
  end

  def new
    #creates new instance of person
    #renders new person form
    #GET 
    @person = Person.new
  end

  def create
    #creates the user in the database
    #POST

    @person = Person.new(person_params)
    if @person.save
      redirect_to person_path(@person)
    else 
      render :new
    end
  end

  def edit
    #edit form for existing user
    #PUT request
    @person = Person.find(params[:id])
  end

  def update
    #updates the user in the database
    #PUT
    @person = Person.find(params[:id])
    if @person.update(person_params)
      redirect_to person_path(@person)
    else 
      render :edit
    end
  end

  def destroy
    # finds a person and deletes them from the database
    # DELETE
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to people_path
  end

  private
  #strong params
  # security for data coming into controller
  def person_params
    params.require(:person).permit(:name, :age, :gender, :alive, :hair_color, :eye_color)

  end

end
