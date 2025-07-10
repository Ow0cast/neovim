/*
 *          ╭──────────────────────────────────────────────────────────╮
 *          │                   KEYBINDS / keys.nix                    │
 *          ╰──────────────────────────────────────────────────────────╯
*/
{
	globals.mapleader = " ";
	keymaps = [
		# ── NEOTREE ───────────────────────────────────────────────────────────
		{
			action = ":Neotree filesystem reveal left<CR>";
			key = "<leader>  ";
		}
		{
			action = ":Neotree buffers reveal right<CR>";
			key = "<leader> x";
		}
		{
			action = ":Neotree filesystem close<CR>";
			key = "<leader> z";
		}
		{
			action = ":Neotree buffers close<CR>";
			key = "<leader> c";
		}
		# ── LSP ───────────────────────────────────────────────────────────────
		{
			action = ":lua vim.lsp.buf.format()<CR>";
			key = "<leader>lf";
		}
		{
			action = ":lua vim.lsp.buf.hover()<CR>";
			key = "<leader>lh";
		}
		{
			action = ":lua vim.lsp.buf.definition()<CR>";
			key = "<leader>ls";
		}
		{
			action = ":lua vim.lsp.buf.code_action()<CR>";
			key = "<leader>la";
		}
		# ── TELESCOPE ─────────────────────────────────────────────────────────
		{
			action = ":Telescope find_files<CR>";
			key = "<leader>fb";
		}
		{
			action = ":Telescope live_grep<CR>";
			key = "<leader>fn";
		}
		{
			action = ":Telescope oldfiles<CR>";
			key = "<leader>fr";
		}
		# ── COMMENT-BOX ───────────────────────────────────────────────────────
		{
			action = ":CBccbox<CR>";
			key = "<leader>dt";
		}
		{
			action = ":CBllline<CR>";
			key = "<leader>ds";
		}
		{
			action = ":CBd<CR>";
			key = "<leader>du";
		}
	];
}
