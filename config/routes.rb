Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get '/tasks', to: "tasks#index", as: "tasks"

   get '/tasks/new', to: "tasks#new", as: "new_task"

get '/tasks/:id', to: "tasks#show", as: "task"

# #CREATE
#   #DISPLAY FORM
#   #POST
   post '/tasks', to: "tasks#create"
# #UPDATE
#   #DISPLAY FORM
   get '/tasks/:id/edit', to: "tasks#edit", as: "edit_task"
#   #UPDATE
   patch '/tasks/:id', to: "tasks#update"
# #DESTROY
  delete '/tasks/:id', to: "tasks#destroy"
end
