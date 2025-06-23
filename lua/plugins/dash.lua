return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                                                                                                    ]],
			[[                                                                                                    ]],
			[[                                                     ████                                           ]],
			[[                                                  ███░░░█                                           ]],
			[[                                                 █░░░░░█                                            ]],
			[[                                               ██░░░░░░█                                            ]],
			[[                                              █░░░░░░░█                                      ███    ]],
			[[                                             █░░░░░░░░█                                    ██░░█    ]],
			[[                                            █░░░░░░░░░█                                  ██░░░░█    ]],
			[[                                            █░░░░░░░░█                                  █░░░░░█     ]],
			[[                                           █░░░░░░░░░█                                 █░░░░░█      ]],
			[[                                         ██░░░░░░░░░░█                                █░░░░░█       ]],
			[[                                     ████░░░░░░░░░░░░█                  █            █░░░░░█        ]],
			[[                   ██████████████████░░░░░░░░░░░░░░░░░█                █░█         ██░░░░░█         ]],
			[[           ████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░███           ██░░█      ███░░░░░░█          ]],
			[[      █████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░███████████░░░░░██████░░░░░░░░░█          ]],
			[[   ███░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█         ]],
			[[ ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█        ]],
			[[█░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█████░░░░░█       ]],
			[[█░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██     ███░░░█      ]],
			[[█░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░███          ████      ]],
			[[ ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░████                       ]],
			[[   ████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░████                           ]],
			[[       ██████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█████                              ]],
			[[                 █████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░███████                                   ]],
			[[                      ███████████████░░░░░░░░░░░░░░░██████                                          ]],
			[[                                     ██░░░░░░░░░░░██                                                ]],
			[[                                       █░░░░░░░░░░░██                                               ]],
			[[                                        █░░░░░░░░░░░░███                                            ]],
			[[                                         ██░░░░░░░░░░░░░███                                         ]],
			[[                                           ████░░░░░░░░░░░░██████                                   ]],
			[[                                               █████░░░░░░░░░░░░░█                                  ]],
			[[                                                    █████████████                                   ]],
			[[                                                                                                    ]],
		}

		dashboard.section.header.opts.hl = "AlphaHeader"

		vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#313244" })

		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("r", "  Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("f", "  Search", ":Telescope find_files<CR>"),
			dashboard.button("q", "  Quit", ":qa<CR>"),
		}

		local handle = io.popen("curl -s https://zenquotes.io/api/random")
		local result = handle:read("*a")
		handle:close()

		local ok, data = pcall(vim.fn.json_decode, result)
		if not ok then
			print("Failed to parse JSON:", data)
			return
		end

		if type(data) == "table" and #data > 0 then
			local quote = data[1]

			dashboard.section.footer.val = {
				quote.q,
				"   - " .. quote.a,
			}
		else
			print("Unexpected JSON structure")
		end

		alpha.setup(dashboard.config)
	end,
}
