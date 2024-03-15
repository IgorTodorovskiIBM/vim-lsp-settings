augroup vim_lsp_settings_rexx_language_support
  au!
  LspRegisterServer {
      \ 'name': 'rexx-language-support',
      \ 'cmd': {server_info->lsp_settings#get('rexx-language-support', 'cmd', [lsp_settings#exec_path('rexx-language-support')]+lsp_settings#get('rexx-language-support', 'args', []))},
      \ 'root_uri':{server_info->lsp_settings#get('rexx-language-server', 'root_uri', lsp_settings#root_uri('rexx-language-support'))},
      \ 'initialization_options': lsp_settings#get('rexx-language-support', 'initialization_options', {}),
      \ 'allowlist': lsp_settings#get('rexx-language-support', 'allowlist', ['rexx']),
      \ 'blocklist': lsp_settings#get('rexx-language-support', 'blocklist', []),
      \ 'config': lsp_settings#get('rexx-language-support', 'config', lsp_settings#server_config('rexx-language-support')),
      \ 'workspace_config': lsp_settings#get('rexx-language-support', 'workspace_config', {}),
      \ 'semantic_highlight': lsp_settings#get('rexx-language-support', 'semantic_highlight', {}),
      \ }
augroup END
