Rails.application.routes.draw do

  mount ErrorCatcher::Engine => "/error_catcher"
end
