-- local lspconfig = require'lspconfig'
-- lspconfig.dartls.setup{
--     cmd = { "dart", O.dart.sdk_path, "--lsp" },
--     on_attach = require'lsp'.common_on_attach,
--     init_options = {
--       closingLabels = true,
--       flutterOutline = false,
--       onlyAnalyzeProjectsWithOpenFiles = false,
--       outline = false,
--       suggestFromUnimportedLibraries = true,
-- 	  completeFunctionCalls = true,
-- 	  insertArgumentPlaceholders = true,
-- 	  enableCompletionCommitCharacters = false,
--       enableSnippets = true,
--     },
-- 	callbacks = {
-- 	-- get_callback can be called with or without arguments
-- 	['dart/textDocument/publishClosingLabels'] = require('lsp_extensions.dart.closing_labels').get_callback({highlight = "Special", prefix = " >> "}),
-- 	},
-- 	root_dir = lspconfig.util.root_pattern("pubspec.yaml")
-- }
require("flutter-tools").setup{
  experimental = { -- map of feature flags
    lsp_derive_paths = true, -- experimental: Attempt to find the user's flutter SDK
  },
  flutter_path = "/opt/flutter/bin/flutter",
  lsp = {
	  capabilities = dart_capabilities
	}
  -- flutter_lookup_cmd = "dirname $(dirname $(readlink -f $(which flutter)))"
}
