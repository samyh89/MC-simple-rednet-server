------------------------------------------------------
-- OVI SALASANA DOORLOCK OHJELMA 
------------------------------------------------------

term.clear()
print('Kirjoita salasana:')
password = read()
monitor = peripheral.wrap('left')

function setmon(test)
		monitor.clear()
		 monitor.setCursorPos(8, 5)
		  monitor.setTextScale(1)
end


if password == 'moro123' then
	setmon()
	 monitor.setTextColor( colors.green )
      monitor.write('Salasana Oikein!')
 redstone.setOutput('back', true)
 sleep(4)
 monitor.clear()
 redstone.setOutput('back', false)
 os.shutdown()

else
  setmon()
   monitor.setTextColor( colors.red )
    monitor.write('Salasana Vaarin!')
  sleep(4)
   monitor.clear()
   os.shutdown()
end

