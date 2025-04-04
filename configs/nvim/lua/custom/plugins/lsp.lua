return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"hrsh7th/nvim-cmp",
				dependencies = {
					"hrsh7th/cmp-nvim-lsp",
					"hrsh7th/cmp-buffer",
					"hrsh7th/cmp-path",
				},
				config = function()
					require("cmp").setup({
						sources = {
							{ name = "nvim_lsp" },
							{ name = "buffer" },
							{ name = "path" },
						}
					})
				end,
			},
		},
		config = function()
			local lsp = require("lspconfig")
			local cap = vim.lsp.protocol.make_client_capabilities()
			cap = require("cmp_nvim_lsp").default_capabilities(cap)

			local on_attach = function(client, bufnr)
				vim.keymap.set('n', "<leader>r", vim.lsp.buf.rename, { buffer = 0 })
				vim.keymap.set('n', "K", vim.lsp.buf.hover, { buffer = 0 })
				vim.keymap.set('n', "gd", vim.lsp.buf.definition, { buffer = 0 })
				vim.keymap.set('n', "gt", vim.lsp.buf.type_definition, { buffer = 0 })
				vim.keymap.set('n', "gi", vim.lsp.buf.implementation, { buffer = 0 })
				vim.keymap.set('n', "<leader>ca", vim.lsp.buf.code_action, {
					buffer = 0 })

					if client.name == 'ruff' then
						-- Disable hover in ruff (it does not supports yet)
						client.server_capabilities.hoverProvider = false
					end
			end

			-- Language servers
			lsp.lua_ls.setup {
				capabilities = cap,
				on_attach = on_attach,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" }
						}
					}
				}
			}

			lsp.gopls.setup {
				capabilities = cap,
				on_attach = on_attach
			}

			lsp.ts_ls.setup {
				capabilities = cap,
				on_attach = on_attach
			}

			lsp.dartls.setup {
				capabilities = cap,
				on_attach = on_attach
			}

			lsp.zls.setup {
				capabilities = cap,
				on_attach = on_attach
			}

			lsp.ruff.setup {
				on_attach = on_attach,
				trace = 'messages',
				init_options = {
					settings = {
						logLevel = 'debug',
					}
				}
			}

			lsp.pyright.setup{
				capabilities = cap,
				on_attach = on_attach,
				settings = {
					pyright = {
						-- Using Ruff's import organizer
						disableOrganizeImports = true,
					},
					python = {
						analysis = {
							-- Ignore all files for analysis to exclusively use Ruff for linting
							ignore = { '*' },
						},
					},
				},
			}
		end,
	}
}
