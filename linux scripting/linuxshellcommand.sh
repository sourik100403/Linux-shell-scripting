#monitor process
ps
ps -e
ps -eH
ps -ef
ps -eF #add total memory uses cpu
ps -eFl #long information show
ps -e --format uid,pid,ppid,%cpu,cmd # show all detailes of ps uid,pid,ppid,%cpu,cmd
ps -e --format uid,pid,ppid,%cpu,cmd --sort %cpu #sort by the cpu