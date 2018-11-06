Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


#CREATE a task - get a form, create new
get "tasks/new", to: "tasks#new"
post "tasks", to: "tasks#create"

# READ all tasks
get "/tasks", to: "tasks#index", as: "alltasks"
#READ a task
get "/tasks/:id", to: "tasks#show", as: "task"

#UPDATE a task - get a form for id, update
get "/tasks/:id/edit", to: "tasks#edit", as: "edittask"
patch "tasks/:id", to: "tasks#update"


# DESTROY
delete "/tasks/:id", to: "tasks#destroy", as: "deletetask"
end
