return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle left<CR>", {})
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
    vim.api.nvim_create_autocmd("VimEnter", {
      command = "set nornu nonu | Neotree toggle",
    })
    vim.api.nvim_create_autocmd("BufEnter", {
      command = "set rnu nu",
    })
	end,
}
