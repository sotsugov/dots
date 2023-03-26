polybar-msg cmd quit
echo "---" | tee -a /tmp/main.log
polybar main 2>&1 | tee -a /tmp/main.log & disown