-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- Define a function to set keymaps based on filetype
local function set_filetype_keymaps()
  -- For Python files, map F5 to run the Python script in a terminal
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
      vim.keymap.set("i", "<F5>", "<Esc>:w<CR>:term python3 %<CR>i", { silent = true, noremap = true, buffer = true })
      vim.keymap.set("n", "<F5>", ":w<CR>:term python3 %<CR>i", { silent = true, noremap = true, buffer = true })
    end,
  })

  -- For JavaScript files, map  to run the JS file using node in a terminal
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "javascript",
    callback = function()
      vim.keymap.set("i", "<F5>", "<Esc>:w<CR>:term node %<CR>", { silent = true, noremap = true, buffer = true })
      vim.keymap.set("n", "<F5>", ":w<CR>:term node %<CR>", { silent = true, noremap = true, buffer = true })
    end,
  })

  -- For Lua files, map F5 to run the Lua file in a terminal
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "lua",
    callback = function()
      vim.keymap.set("i", "<F5>>", "<Esc>:w<CR>:term lua %<CR>", { silent = true, noremap = true, buffer = true })
      vim.keymap.set("n", "<F5>>", ":w<CR>:term lua %<CR>", { silent = true, noremap = true, buffer = true })
    end,
  })

  -- For Go files, map F5 to run the Go file in a terminal
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "go",
    callback = function()
      vim.keymap.set("i", "<F5>", "<Esc>:w<CR>:term go run %<CR>", { silent = true, noremap = true, buffer = true })
      vim.keymap.set("n", "<F5>", ":w<CR>:term go run %<CR>", { silent = true, noremap = true, buffer = true })
    end,
  })

  -- for platfomio cpp files, map f5 to run the project, F6 to upload F8 to serial monitor
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "cpp",
    callback = function()
      vim.keymap.set("i", "<F5>", "<Esc>:w<CR>:term pio run<CR>", { silent = true, noremap = true, buffer = true })
      vim.keymap.set("n", "<F5>", ":w<CR>:term pio run<CR>", { silent = true, noremap = true, buffer = true })
      vim.keymap.set(
        "i",
        "<F6>",
        "<Esc>:w<CR>:term pio run -t upload<CR>",
        { silent = true, noremap = true, buffer = true }
      )
      vim.keymap.set("n", "<F6>", ":w<CR>:term pio run -t upload<CR>", { silent = true, noremap = true, buffer = true })
    end,
  })

  -- For Arduino files map f5 to run the project, F6 to upload F8 to serial monitor
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "cpp",
    callback = function()
      vim.keymap.set("i", "<F5>", "<Esc>:w<CR>:term make compile<CR>", { silent = true, noremap = true, buffer = true })
      vim.keymap.set("n", "<F5>", ":w<CR>:term make compile<CR>", { silent = true, noremap = true, buffer = true })
      vim.keymap.set("i", "<F6>", "<Esc>:w<CR>:term make upload<CR>", { silent = true, noremap = true, buffer = true })
      vim.keymap.set("n", "<F6>", ":w<CR>:term make upload<CR>", { silent = true, noremap = true, buffer = true })
    end,
  })
end

-- Call the function to set up the mappings
set_filetype_keymaps()
