-- Change make tasks depending on battery.
vim.cmd [[
	function! MyOnBattery()
		if has('macunix')
			return match(system('pmset -g batt'), "Now drawing from 'Battery Power'") != -1
		elseif has('unix')
			return readfile('/sys/class/power_supply/AC0/online') == ['0']
		endif
		return 0
	endfunction

	if MyOnBattery()
		call neomake#configure#automake('w')
	else
		call neomake#configure#automake('nw', 1000)
	endif
]]

vim.g.neomake_open_list = 2
