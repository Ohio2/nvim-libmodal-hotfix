--[[/* MODULE */]]

local utils       = {}
utils.api         = require('libmodal/src/utils/api')
utils.Help        = require('libmodal/src/utils/Help')
utils.WindowState = require('libmodal/src/utils/WindowState')

--[[/* FUNCTIONS */]]

--- Show an error from `pcall()`.
--- @param pcall_err string the error generated by `pcall()`.
function utils.show_error(pcall_err)
	utils.api.nvim_bell()

	utils.api.nvim_show_err(
		require('libmodal/src/globals').DEFAULT_ERROR_TITLE,
		vim.v.throwpoint..'\n'..vim.v.exception..'\n'..pcall_err
	)
end

--[[/* PUBLICIZE MODULE */]]

return utils
