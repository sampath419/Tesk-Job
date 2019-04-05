require 'rails_helper'

RSpec.describe "job_posters/index", type: :view do
  before(:each) do
    assign(:job_posters, [
      JobPoster.create!(),
      JobPoster.create!()
    ])
  end

  it "renders a list of job_posters" do
    render
  end
end
