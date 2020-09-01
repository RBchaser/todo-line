Rails.application.routes.draw do
  root to:"tasks#index"
  post"/create",to:"tasks#create"
  delete"/tasks/:id",to:"tasks#destroy"
  get"/tasks/:id/edit",to:"tasks#edit"
  patch"/tasks/:id",to:"tasks#update"
end
