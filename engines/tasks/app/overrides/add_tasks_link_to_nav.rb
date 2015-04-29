Deface::Override.new(:virtual_path => "layouts/shogun/application",
                    :name => "add_tasks_link_to_nav",
                    :insert_after => "[data-shogun-hook='main_nav']",
                    :partial => "overrides/tasks_link",
                    :namespaced => true)
