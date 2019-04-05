require 'rails_helper'

RSpec.describe "job_posters/edit", type: :view do
  before(:each) do
    @job_poster = assign(:job_poster, JobPoster.create!())
  end

  it "renders the edit job_poster form" do
    render

    assert_select "form[action=?][method=?]", job_poster_path(@job_poster), "post" do
    end
  end
end
