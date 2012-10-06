Huskr::Application.routes.draw do
  scope 'api/v:api_version', :format => 'json' do
    resources :statuses, :only => [:create, :index]
  end
end
