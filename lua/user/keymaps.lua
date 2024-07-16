-- lua/user/keymaps.lua
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Ejemplo de mapeo de teclado: Abre NvimTree con <leader>e
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

map("n", "<leader>ff", ":Telescope find_files<CR>", opts)

-- Buscar texto en el proyecto
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)

-- Buscar buffers abiertos
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- Buscar en el historial de comandos
map("n", "<leader>fh", ":Telescope help_tags<CR>", opts)


-- Dividir Horizontalmente
map('n', '<leader>h', ':split<CR>', opts)

-- Dividir Verticalmente
map('n', '<leader>v', ':vsplit<CR>', opts)

-- Navegar entre ventanas
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- Cerrar ventana actual
map('n', '<leader>c', ':close<CR>', opts)


-- Ajustar tamaño horizontal
map('n', '<leader>+', ':resize +5<CR>', opts)
map('n', '<leader>-', ':resize -5<CR>', opts)

-- Ajustar tamaño vertical
map('n', '<leader>>', ':vertical resize +5<CR>', opts)
map('n', '<leader><', ':vertical resize -5<CR>', opts)

map('n', '<leader>t', ':ToggleTerm<CR>', opts)

map('n', '<F5>', ':lua require"dap".continue()<CR>', opts)
map('n', '<F10>', ':lua require"dap".step_over()<CR>', opts)
map('n', '<F11>', ':lua require"dap".step_into()<CR>', opts)
map('n', '<F12>', ':lua require"dap".step_out()<CR>', opts)
map('n', '<leader>b', ':lua require"dap".toggle_breakpoint()<CR>', opts)
map('n', '<leader>B', ':lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', opts)
map('n', '<leader>lp', ':lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', opts)
map('n', '<leader>dr', ':lua require"dap".repl.open()<CR>', opts)
map('n', '<leader>dl', ':lua require"dap".run_last()<CR>', opts)

-- Guardar archivo con Ctrl+S
map('n', '<C-s>', ':w<CR>', opts)
map('i', '<C-s>', '<Esc>:w<CR>a', opts)
