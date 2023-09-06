" ----------------------- VIM SETTINGS --------------------------
" use windows clipboard as unnamed register, allowing to copy and paste from/to other programs
set clipboard=unnamed

" only case sensitive search if non lower case characters are present
set ignorecase
set smartcase

" relative line numbers
set relativenumber
set number

" ----------------------- VISUAL STUDIO SHORTCUTS -----------------
" binds toggle line comment 
nmap <A-k> :vsc Edit.ToggleLineComment<CR>
vmap <A-k> :vsc Edit.ToggleLineComment<CR>

" bind QuickInfo (info shown when mouse over)
nmap gh :vsc Edit.QuickInfo<CR>

" close all but this
nmap <leader>q :vsc File.CloseAllButThis<CR> 


" ----------------------- PEASY MOTION SETTINGS ------------------
" gS prefix is added for ViEmu, no use for VsVim AFAIK.
"VsVim and ViEmu are disabled until PeasyMotion finishes

"Whole viewport jump-to-word beginning mode:
nnoremap <leader>g gS:vsc Tools.InvokePeasyMotion<CR>

"Select text from current caret position to desired jump label (fwd and reverse directions supported)
nmap <leader>; gS:vsc Tools.InvokePeasyMotionTextSelect<CR>

"Jump to word beginning in current line
nmap <leader>w gS:vsc Tools.InvokePeasyMotionLineJumpToWordBegining<CR>
"Jump to word ending in current line
nmap <leader>e gS:vsc Tools.InvokePeasyMotionLineJumpToWordEnding<CR>

"Jump to any open document tab
nmap <leader>t gS:vsc Tools.InvokePeasyMotionJumpToDocumentTab<CR>

"Jump to other diff side
nmap <leader>d gS:vsc Diff.SwitchBetweenLeftAndRight<CR>

"Jump to line beginning:
nmap <leader>l gS:vsc Tools.InvokePeasyMotionJumpToLineBegining<CR>

"Two char search mode:
nmap <leader>c gS:vsc Tools.InvokePeasyMotionTwoCharJump<CR>

" ----------- RESHARPER SETTINGS --------------------------------
" binds silent cleanup code to equal sign
vmap = :vsc ReSharper.ReSharper_ReformatCode<CR>

" binds rename of variable
nmap gr :vsc ReSharper.ReSharper_Rename<CR>

" binds move of variable
nmap <leader>m :vsc ReSharper.ReSharper_Move<CR>