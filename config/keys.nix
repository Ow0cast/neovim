{
	globals.mapleader = " ";
	keymaps = [
		#####################
		#      NEOTREE      #
		#####################
		{
			action = ":Neotree filesystem toggle<CR>";
			key = "<leader> ";
		}
		#####################
		#        LSP        #
		#####################
		{
			action = ":lua vim.lsp.buf.format()<CR>";
			key = "<leader>f";
		}
		{
			action = ":lua vim.lsp.buf.hover()<CR>";
			key = "<leader>h";
		}
		{
			action = ":lua vim.lsp.buf.definition()<CR>";
			key = "<leader>d";
		}
		{
			action = ":lua vim.lsp.buf.code_action()<CR>";
			key = "<leader>ca";
		}
		#####################
		#     TELESCOPE     #
		#####################
		{
			action = ":Telescope find_files<CR>";
			key = "<leader>b";
		}
		{
			action = ":Telescope live_grep<CR>";
			key = "<leader>n";
		}
		{
			action = ":Telescope oldfiles<CR>";
			key = "<leader>r";
		}
	];
}
