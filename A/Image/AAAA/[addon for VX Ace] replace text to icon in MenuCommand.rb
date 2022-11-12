class Window_MenuCommand < Window_Command
  def draw_item(index)
	icon_index_list = {
		:item => 1,
		:skill => 2,
		:equip  => 3,
		:status => 4,
		:formation => 5,
		:save => 6,
		:game_end => 7,
		:continue  => 8,
		:common_event_1 => 9,
		:custom_scene_0 => 10,
	}
	icon_index = icon_index_list[@list[index][:symbol]]
	rect = item_rect_for_text(index)
	x = rect.x
	y = rect.y + (rect.height - 24) / 2
	case alignment
	when 1; x += (item_width - 24) / 2;
	when 2; x += item_width - 24;
	end
	draw_icon(icon_index, x, y, command_enabled?(index))
  end
end