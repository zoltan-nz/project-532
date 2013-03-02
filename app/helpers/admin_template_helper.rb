module AdminTemplateHelper

  def main_tab_menu_li(text, id)
    content_tag :li do
      raw(
        link_to text, "##{id}", {"data-toogle" => id}
      )
    end
  end

  def sub_pane_menu_generator(tab_name, submenu_array)
    content_tag :div, id: tab_name, class: "tab-pane" do
      content_tag :ul, id: "pane-#{tab_name}", class: "nav nav-pills" do
        raw(
        submenu_array.collect do |text|
          sub_pane_menu_li(text)
        end.join
        )
      end
    end
  end

  def sub_pane_menu_li(text)

      content_tag :li do
          link_to text, "#{text}", {"data-toggle" => "pill"}
      end


  end

end
