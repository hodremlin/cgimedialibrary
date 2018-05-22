ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    #columns do
    #  column do
    #    panel "Recent Posts" do
    #      ul do
    #        Post.recent(5).map do |post|
    #        li link_to(post.title, admin_post_path(post))
    #      end
    #    end
    #  end
    #end
    columns do
      column do
        panel "Welcome to the CGI Media Library Dashboard" do
          para "Welcome to the Dashboard of the CGI Media Library.  Please read the documentation before getting started."
        end
      end
     column do
        panel "Changelog" do
          para "A list of recent updates will go here."
        end
      end
    end
  end
end