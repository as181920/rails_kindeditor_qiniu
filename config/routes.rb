Rails.application.routes.draw do
  namespace :kindeditor do
    post "/upload" => "assets#create"
  end
end
