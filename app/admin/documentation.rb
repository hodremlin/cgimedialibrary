ActiveAdmin.register_page "Documentation" do

  content do
    panel "Documentation" do
      para "Getting Started"
      para "The Dashboard for CGI Media Library is utilizes ActiveAdmin, a Ruby on Rails gem."
    end
  end  


  sidebar "Test Sidebar" do
    "Hi World"
  end
end