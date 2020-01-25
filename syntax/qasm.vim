" Maintainer: Jacob Adley <https://github.com/jadley08>
" Filenames: *.qasm
" Last Change: 2020 January 16

syntax region qasmComment start='//' end='\n'
syntax match qasmNumber '\d'
syntax region qasmString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax keyword qasmKeyword qreg creg include gate opaque barrier
syntax match qasmKeyword '->'
syntax keyword qasmOperator U u ID id X x CX cx CCX ccx measure reset if
syntax match qasmOperator '=='
syntax match qasmIdentifier 'OPENQASM 2.0;'

highlight default link qasmComment Comment
highlight default link qasmNumber Number
highlight default link qasmOperator Function
highlight default link qasmKeyword Keyword
highlight default link qasmString String
highlight default link qasmIdentifier Identifier
