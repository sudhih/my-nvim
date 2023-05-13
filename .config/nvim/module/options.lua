vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.number = true
vim.opt.relativenumber = true

-- Make copy/paste work between vim and system clipboard
-- `:h g:clipboard`
if vim.fn.has('WSL') then
	vim.g.clipboard = {
		name = 'WslClipboard',
		copy = {
			['*'] = 'clip.exe',
			['+'] = 'clip.exe',
		},
		paste = {
			['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
			['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
	},
		cache_enabled = 0,
	}
elseif vim.fn.has('mac') then
	vim.g.clipboard = {
		name = 'macos-clipboard',
		copy = {
			['+'] = 'pbcopy',
			['*'] = 'pbcopy',
		},
		paste = {
			['+'] = 'pbpaste',
			['*'] = 'pbpaste',
	},
		cache_enabled = 0,
	}
end	

			
			
			
