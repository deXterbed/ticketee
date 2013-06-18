Dir[Rails.root + "factories/*.rb"].each do |file|
  require file
end

World(FactoryGirl::Syntax::Methods)
