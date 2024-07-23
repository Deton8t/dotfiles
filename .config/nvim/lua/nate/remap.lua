vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", function()
    vim.cmd("Oil");
end)
vim.keymap.set("n","<leader>sc", vim.cmd.noh)
vim.keymap.set("n","<leader>bp", vim.cmd.bprevious)
vim.keymap.set("n","<leader>bn", vim.cmd.bnext)


vim.keymap.set("n","<leader>ow", function()
	vim.cmd("ObsidianWorkspace");
end)
vim.keymap.set("n","<leader>of",function()
    vim.cmd("ObsidianQuickSwitch");
end)
vim.keymap.set("n","<leader>ogd", function()
    vim.cmd("ObsidianFollowLink");
end)

vim.api.nvim_set_keymap('n', '<C-l>', ':TmuxNavigateRight<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':TmuxNavigateDown<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', ':TmuxNavigateLeft<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':TmuxNavigateUp<CR>', { noremap = true, silent = true })

vim.keymap.set("n","<leader>zi",":tab split<CR>", {})
vim.keymap.set("n","<leader>zo",":tab close<CR>", {})

vim.keymap.set("n","<leader>Tsc",function()
    vim.opt.spell = false;
end)
vim.keymap.set("n","<leader>tsc",function()
    vim.opt.spell = true;
end)


--[[ vim.keymap.set("n","<leader>h", function()
    vim.cmd("wincmd h");
end)
vim.keymap.set("n","<leader>l", function()
    vim.cmd("wincmd l");
end)
vim.keymap.set("n","<leader>j", function()
vim.cmd("wincmd j");
end)
vim.keymap.set("n","<leader>k", function()
    vim.cmd("wincmd k");
end)
--]]

vim.keymap.set("n", '<leader>"', function()
    vim.cmd("split");
end)
vim.keymap.set("n", "<leader>%", function()
    vim.cmd("vsplit");
end)
vim.keymap.set("n", "<leader>x", function()
    vim.cmd("wincmd c");
end)

vim.keymap.set("", "<C-Up>",function()
    vim.cmd("wincmd 2 +");
end)
vim.keymap.set("n", "<C-Down>",function()
    vim.cmd("wincmd 2 -");
end)
vim.keymap.set("n", "<C-Left>",function()
    vim.cmd("wincmd 2 >");
end)
vim.keymap.set("n", "<C-Right>",function()
    vim.cmd("wincmd 2 <");
end)
vim.keymap.set("n","<leader>r", function()
	vim.cmd("redo")
end)
-- OIL BINGINGS:
vim.keymap.set("n","-", function()
    vim.cmd("Oil");
end)

vim.keymap.set("n","\\b",":w<CR>:!tectonic '%'<CR>", {desc = "build tex file"})
vim.keymap.set("n","<leader>wd",":!open https://desmos.com/graphing<CR><CR>", {desc = "open desmos lol"})

vim.keymap.set("n", "<leader>h", "<Nop>", {desc = "Harpoon"})
vim.keymap.set("n", "<leader>hm", ':lua require("harpoon.mark").add_file()<CR>', {desc = "Mark"})
vim.keymap.set("n", "<leader>hl", function()
    vim.cmd(":lua require('harpoon.ui').toggle_quick_menu()")
end, {desc = "Open list"})
vim.keymap.set("n", "<leader>hp", ':lua require("harpoon.ui").nav_prev()<CR>', {desc = "prev"})
vim.keymap.set("n", "<leader>hn", ':lua require("harpoon.ui").nav_next()<CR>', {desc = "next"})

vim.g.current_dir = vim.loop.cwd();

vim.keymap.set("n", "<leader>g", "<Nop>", {desc = "game stuff"})
vim.keymap.set("n", "<leader>gc", ":execute '!' . current_dir . '/compile.sh'<CR>", {desc = "compile"})
vim.keymap.set("n", "<leader>gp", ":execute '!' . current_dir . '/*.out'<CR>", {desc = "play"})
vim.keymap.set("n", "<C-o>", ':!cd ~/"."config/alacritty/templates/ && ./toggle.sh<CR><CR>', {desc = "toggle alacritty opacity"});
