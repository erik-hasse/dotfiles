syn match pythonBP '^\s*breakpoint()'
syn match pythonBP '^\s*import pdb; pdb.set_trace()'
syn match pythonBP '^\s*import ipdb; ipdb.set_trace()'
hi def link pythonBP ErrorMsg
