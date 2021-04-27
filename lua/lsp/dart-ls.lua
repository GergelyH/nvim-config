local lspconfig = require'lspconfig'
lspconfig.dartls.setup{
    cmd = { "dart", O.dart.sdk_path, "--lsp" },
    on_attach = require'lsp'.common_on_attach,
    init_options = {
      closingLabels = true,
      flutterOutline = false,
      onlyAnalyzeProjectsWithOpenFiles = false,
      outline = false,
      suggestFromUnimportedLibraries = true,
	  completeFunctionCalls = true,
	  insertArgumentPlaceholders = true,
	  enableCompletionCommitCharacters = false
    },
	root_dir = lspconfig.util.root_pattern("pubspec.yaml")
}
