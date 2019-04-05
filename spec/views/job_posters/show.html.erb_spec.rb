require 'rails_helper'

RSpec.describe "job_posters/show", type: :view do
  before(:each) do
    @job_poster = assign(:job_poster, JobPoster.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
