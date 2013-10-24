FamilySchool::Application.routes.draw do

 get '/' => "users#new"

 get '/signup' => "users#new"
  get '/login' => 'session#new'
  post '/login' => 'session#create'

  resources :users do
    resources :students do
       resources :incidents
      resources :infractions
    end
  end
end
#== Route Map
# Generated on 23 Oct 2013 21:14
#
#                       signup GET    /signup(.:format)                                                   users#new
#                        login GET    /login(.:format)                                                    session#new
#                              POST   /login(.:format)                                                    session#create
#       user_student_incidents GET    /users/:user_id/students/:student_id/incidents(.:format)            incidents#index
#                              POST   /users/:user_id/students/:student_id/incidents(.:format)            incidents#create
#    new_user_student_incident GET    /users/:user_id/students/:student_id/incidents/new(.:format)        incidents#new
#   edit_user_student_incident GET    /users/:user_id/students/:student_id/incidents/:id/edit(.:format)   incidents#edit
#        user_student_incident GET    /users/:user_id/students/:student_id/incidents/:id(.:format)        incidents#show
#                              PUT    /users/:user_id/students/:student_id/incidents/:id(.:format)        incidents#update
#                              DELETE /users/:user_id/students/:student_id/incidents/:id(.:format)        incidents#destroy
#     user_student_infractions GET    /users/:user_id/students/:student_id/infractions(.:format)          infractions#index
#                              POST   /users/:user_id/students/:student_id/infractions(.:format)          infractions#create
#  new_user_student_infraction GET    /users/:user_id/students/:student_id/infractions/new(.:format)      infractions#new
# edit_user_student_infraction GET    /users/:user_id/students/:student_id/infractions/:id/edit(.:format) infractions#edit
#      user_student_infraction GET    /users/:user_id/students/:student_id/infractions/:id(.:format)      infractions#show
#                              PUT    /users/:user_id/students/:student_id/infractions/:id(.:format)      infractions#update
#                              DELETE /users/:user_id/students/:student_id/infractions/:id(.:format)      infractions#destroy
#                user_students GET    /users/:user_id/students(.:format)                                  students#index
#                              POST   /users/:user_id/students(.:format)                                  students#create
#             new_user_student GET    /users/:user_id/students/new(.:format)                              students#new
#            edit_user_student GET    /users/:user_id/students/:id/edit(.:format)                         students#edit
#                 user_student GET    /users/:user_id/students/:id(.:format)                              students#show
#                              PUT    /users/:user_id/students/:id(.:format)                              students#update
#                              DELETE /users/:user_id/students/:id(.:format)                              students#destroy
#                        users GET    /users(.:format)                                                    users#index
#                              POST   /users(.:format)                                                    users#create
#                     new_user GET    /users/new(.:format)                                                users#new
#                    edit_user GET    /users/:id/edit(.:format)                                           users#edit
#                         user GET    /users/:id(.:format)                                                users#show
#                              PUT    /users/:id(.:format)                                                users#update
#                              DELETE /users/:id(.:format)                                                users#destroy
