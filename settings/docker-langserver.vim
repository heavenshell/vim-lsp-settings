augroup vimlsp_settings_dockerfile_language_server_nodejs
  au!
  let settings = {
      \ 'name': 'docker-langserver',
      \ 'cmd': {server_info->lsp_settings#get('docker-langserver', 'cmd', [lsp_settings#exec_path('docker-langserver'), '--stdio'])},
      \ 'whitelist': lsp_settings#get('docker-langserver', 'whitelist', ['dockerfile']),
      \ 'blacklist': lsp_settings#get('docker-langserver', 'blacklist', []),
      \ 'config': lsp_settings#get('docker-langserver', 'config', {}),
      \ 'workspace_config': lsp_settings#get('docker-langserver', 'workspace_config', {}),
      \ }
  call lsp_settings#register_server_settings(settings)
augroup END
