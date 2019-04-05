require "rails_helper"

RSpec.describe JobPostersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/job_posters").to route_to("job_posters#index")
    end

    it "routes to #new" do
      expect(:get => "/job_posters/new").to route_to("job_posters#new")
    end

    it "routes to #show" do
      expect(:get => "/job_posters/1").to route_to("job_posters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/job_posters/1/edit").to route_to("job_posters#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/job_posters").to route_to("job_posters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/job_posters/1").to route_to("job_posters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/job_posters/1").to route_to("job_posters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/job_posters/1").to route_to("job_posters#destroy", :id => "1")
    end

  end
end
