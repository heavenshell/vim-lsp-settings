augroup vimlsp_settings_lsp4xml
  au!
  let settings = {
      \ 'name': 'lsp4xml',
      \ 'cmd': {server_info->lsp_settings#get('lsp4xml', 'cmd', [lsp_settings#exec_path('lsp4xml')])},
      \ 'whitelist': lsp_settings#get('lsp4xml', 'whitelist', ['xml']),
      \ 'blacklist': lsp_settings#get('lsp4xml', 'blacklist', []),
      \ 'config': lsp_settings#get('lsp4xml', 'config', {}),
      \ 'workspace_config': lsp_settings#get('lsp4xml', 'workspace_config', {}),
      \ }
  call lsp_settings#register_server_settings(settings)
augroup END
