Flickr::Application.routes.draw do
	root :to => 'flickr#index'
	post 'search' => 'flickr#search'
end
