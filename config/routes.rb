SpinaGraphql::Engine.routes.draw do
  mount Spina::Engine => '/'
  post "/graphql", to: "graphql#execute"
end
