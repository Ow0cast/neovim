{
	plugins.alpha = {
		enable = true;
		layout = [
			{
				type = "padding";
				val = 2;
			}
			{
				opts = {
					hl = "AlphaHeader";
					position = "center";
				};
				type = "text";
				val = [
					"                                                                                                    "
					"                                                                                                    "
					"                                                     ████                                           "
					"                                                  ███░░░█                                           "
					"                                                 █░░░░░█                                            "
					"                                               ██░░░░░░█                                            "
					"                                              █░░░░░░░█                                      ███    "
					"                                             █░░░░░░░░█                                    ██░░█    "
					"                                            █░░░░░░░░░█                                  ██░░░░█    "
					"                                            █░░░░░░░░█                                  █░░░░░█     "
					"                                           █░░░░░░░░░█                                 █░░░░░█      "
					"                                         ██░░░░░░░░░░█                                █░░░░░█       "
					"                                     ████░░░░░░░░░░░░█                  █            █░░░░░█        "
					"                   ██████████████████░░░░░░░░░░░░░░░░░█                █░█         ██░░░░░█         "
					"           ████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░███           ██░░█      ███░░░░░░█          "
					"      █████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░███████████░░░░░██████░░░░░░░░░█          "
					"   ███░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█         "
					" ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█        "
					"█░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█████░░░░░█       "
					"█░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██     ███░░░█      "
					"█░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░███          ████      "
					" ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░████                       "
					"   ████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░████                           "
					"       ██████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█████                              "
					"                 █████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░███████                                   "
					"                      ███████████████░░░░░░░░░░░░░░░██████                                          "
					"                                     ██░░░░░░░░░░░██                                                "
					"                                       █░░░░░░░░░░░██                                               "
					"                                        █░░░░░░░░░░░░███                                            "
					"                                         ██░░░░░░░░░░░░░███                                         "
					"                                           ████░░░░░░░░░░░░██████                                   "
					"                                               █████░░░░░░░░░░░░░█                                  "
					"                                                    █████████████                                   "
					"                                                                                                    "
				];
			}
			{
				type = "padding";
				val = 2;
			}
			{
				type = "group";
				opts = {
					position = "center";
					align_shortcut = "right";
					hl_shortcut = "Keyword";
				};
				val = let
				  mkButton = shortcut: cmd: val: hl_shortcut: {
						type = "button";
						inherit val;
						opts = {
							hl = "Operator";
							shortcut = shortcut;
							keymap = [
								"n"
								shortcut
								cmd
								{}
							];
							position = "center";
							cursor = 0;
							width = 50;
							align_shortcut = "right";
							hl_shortcut = hl_shortcut;
					};
				};
				in [
					{
						val = "  Quick Actions";
						type = "text";
						opts = {
							position = "center";
							width = 50;
						};
					}
					(
						mkButton
						"e"
						":ene <BAR> startinsert<CR>"
						"  │ New file"
						"Keyword"
					)
					(
						mkButton
						"r"
						":Telescope oldfiles<CR>"
						"  │ Recent"
						"Keyword"
					)
					(
						mkButton
						"f"
						":Telescope find_files<CR>"
						"  │ Search"
						"Keyword"
					)
					(
						mkButton
						"q"
						":qa<CR>"
						"  │ Quit"
						"Special"
					)
					#{
					#	on_press.__raw = "function() vim.cmd[[ene]] end";
					#	opts = {
					#		shortcut = "e";
					#		position = "center";
					#		align_shortcut = "right";
					#		hl_shortcut = "Keyword";
					#		width = 50;
					#	};
					#	val = "  │ New file";
					#	type = "button";
					#}
					#{
					#	on_press.__raw = "function() vim.cmd[[Telescope oldfiles]] end";
					#	opts = {
					#			keymap.mode = "n";
					#		position = "center";
					#		align_shortcut = "right";
					#		hl_shortcut = "Keyword";
					#		width = 50;
					#	};
					#	val = "  │ Recent";
					#	type = "button";
					#}
					#{
					#	on_press.__raw = "function() vim.cmd[[Telescope find_files]] end";
					#	opts = {
					#		shortcut = "f";
					#		position = "center";
					#		align_shortcut = "right";
					#		hl_shortcut = "Keyword";
					#		width = 50;
					#	};
					#	val = "  │ Search";
					#	type = "button";
					#}
					#{
					#	on_press.__raw = "function() vim.cmd[[qa]] end";
					#	opts = {
					#		shortcut = "q";
					#		position = "center";
					#		align_shortcut = "right";
					#		hl_shortcut = "Keyword";
					#		width = 50;
					#	};
					#	val = "  │ Quit";
					#	type = "button";
					#}
				];
			}
		];
	};
}
