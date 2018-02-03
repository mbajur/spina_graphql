Rails.application.routes.draw do
  mount SpinaGraphql::Engine => "/spina_graphql"
end
