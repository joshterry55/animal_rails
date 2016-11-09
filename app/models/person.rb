class Person < ApplicationRecord
  #validations
  validates_presence_of :name

  #callbacks
    #after_create - runs once after the model is created
    #before_create - runs once right before creation
    #after_save  - runs each time after the model is saved
    #before_save - runs each time before a model gets saved
    #after_initialize - runs once after a Person.new
    #before_initialize - runs before instance gets created in memory
    #after_validate - runs after all of the validations
    #before_validate - runs before all validations

  #associations
  #has_one
  #has_many
  #belongs_to
  #has_many_through
  #has_one_through
  has_many :animals

  #instance methods
  #def info
  def info
    "#{name} is of age: #{age}"
  end


  #class methods - scopes
  #you could do Person.all.by_name.by_age 
  #def self.info
  #Person.all.by_name
  def self.by_name
    order(:name)
  end

  #Person.all.by_age
  def self.by_age
    order(:age)
  end

end
