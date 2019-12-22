augroup vimlsp_settings_css_languageserver
  au!
  let settings = {
      \ 'name': 'css-languageserver',
      \ 'cmd': {server_info->lsp_settings#get('css-languageserver', 'cmd', [lsp_settings#exec_path('css-languageserver'), '--stdio'])},
      \ 'initialization_options': lsp_settings#get('css-languageserver', 'initialization_options', v:null),
      \ 'whitelist': lsp_settings#get('css-languageserver', 'whitelist', ['css']),
      \ 'blacklist': lsp_settings#get('css-languageserver', 'blacklist', []),
      \ 'config': lsp_settings#get('css-languageserver', 'config', v:null),
      \ 'workspace_config': lsp_settings#get('css-languageserver', 'workspace_config', {'css-languageserver': {'css.lint.validProperties': [], 'less.lint.validProperties': [], 'scss.lint.validProperties': []}}),
      \ }
  call lsp_settings#register_server_settings(settings)
augroup END
