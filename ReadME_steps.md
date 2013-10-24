
class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.boolean :admin, default: false
      t.timestamps
    end
  end
end



class CreateStudentsTable < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :student_id
      t.text :address
      t.date :date_of_birth
      t.string :guardians_name
      t.integer :phone_number
      t.timestamps
    end
  end
end

$rake db:migrate

# Go to app>models  do a rb file for User and Student

class User <ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation

  has_secure_password

  validates :email, :password, :password_confirmation, :presence => true
  validates :email, :uniqueness => true
  validates :password, :password_confirmation, :length => { in: 3..20 }

end

class Student <ActiveRecord::Base
attr_accessible :first_name, :last_name, :student_id, :address, :date, guardians_name, :integer

has_many :infractions
has_many :users
end

#when dropping table do rake db:drop



<%= form_tag "/users/#{@id}" do %>

  <%= label_tag 'first_name', 'First Name: ' %>
  <%= text_field_tag 'first_name', @first_name %>

<%= label_tag 'last_name', 'Last Name: ' %>
  <%= text_field_tag 'last_name', @last_name %>

  <%= label_tag 'osis', 'Osis #: ' %>
  <%= text_field_tag 'osis', @osis %>

  <%= label_tag 'address', 'Address: ' %>
  <%= text_field_tag 'address', @address %>

  <%= label_tag 'date_of_birth', 'Date of Birth: ' %>
  <%= text_field_tag 'date_of_birth', @date_of_birth %>

  <%= submit_tag 'Update' %>
<% end %>


**********Should I use this? *** It isn't routing where I want it to.



### Learnings,
you need to put this at the end of a form when you want to connect the student to a user
where it is on the page it is being rendered
<%= f.hidden_field :user_id, :value => @user.id %>


You don't need to have a students' show page if you are going to put the form on a user's page
You just have to make sure that the student who belongs to the user has a user_id and can be connected to the user


class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :lookup_user #we want this to run on every controller. this is not running until we call it.

  def lookup_user
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

end


## We are doing dev lookup_user in the ActionController because we want to be able to have the user involved in each page after they log in

Question: If the session is in the session_controller as below. How does Application Controllers knows to call the session?


class SessionController < ApplicationController
  def new
  end

  def create
    email = params[:email]
    password = params[:password]
    @user = User.where(email: email).first
    if @user && @user.authenticate(password)
      session[:user_id] = @user.id
      # redirect_to("/users/#{user.id}")
      redirect_to(@user)
    else
      render :new
    end
  end



end


## I want to have the students who are present show up and you can pick that id.
<div>

<%= form_for(@incident) do |f| %>
  <%= f.label :descripiton %>
  <%= f.text_field :description %><br>
  <%= f.label :student_id %>
  <%= f.text_field :student_id %><br>
  <%= f.label :infraction_id %>
  <%= f.text_field :infraction_id %><br>

  <%= f.submit "Sign Up" %>
<% end %>
</div>



#I added the else part to the session


  def lookup_user
    if session[:user_id]
      @user = User.find(session[:user_id])
  else
    flash[:error] = "There are no users in database."
    redirect_to '/signup'
  end

end


Things to do
1. List the infractions such that it can be picked from a list
2. User should see a list of choices on what infractions are
3. User should be able to pick the infraction from the list
2.
3.


This is not running in index.html.erb


 <!--
 <li>
    <%= #link_to "Create an incident", new_user_student_incident_path(@user, @student) %>
 </li>
</ul>
</div>
-->
