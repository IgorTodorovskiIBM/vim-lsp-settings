augroup vim_lsp_settings_jcl_language_support
  au!
  LspRegisterServer {
      \ 'name': 'jcl-language-support',
      \ 'cmd': {server_info->lsp_settings#get('jcl-language-support', 'cmd', [lsp_settings#exec_path('jcl-language-support')]+lsp_settings#get('jcl-language-support', 'args', ['--stdout']))},
      \ 'root_uri':{server_info->lsp_settings#get('jcl-language-server', 'root_uri', lsp_settings#root_uri('jcl-language-support'))},
      \ 'initialization_options': lsp_settings#get('jcl-language-support', 'initialization_options', {}),
      \ 'allowlist': lsp_settings#get('jcl-language-support', 'allowlist', ['jcl']),
      \ 'blocklist': lsp_settings#get('jcl-language-support', 'blocklist', []),
      \ 'config': lsp_settings#get('jcl-language-support', 'config', lsp_settings#server_config('jcl-language-support')),
      \ 'workspace_config': lsp_settings#get('jcl-language-support', 'workspace_config', {}),
      \ 'semantic_highlight': lsp_settings#get('jcl-language-support', 'semantic_highlight', {}),
      \ }
augroup END
