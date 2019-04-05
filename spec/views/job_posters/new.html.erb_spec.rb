require 'rails_helper'

RSpec.describe "job_posters/new", type: :view do
  before(:each) do
    assign(:job_poster, JobPoster.new())
  end

  it "renders new job_poster form" do
    render

    assert_select "form[action=?][method=?]", job_posters_path, "post" do
    end
  end
end
