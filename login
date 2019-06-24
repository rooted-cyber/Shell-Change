#!/data/data/com.termux/files/usr/bin/sh


echo "\033[1;92m***************************************************************************\033[1;91m"
echo "__  __    _    ____  _   _ _____       _    _   _ ____    _    ____  ___\033[1;92m"
echo "|  \/  |  / \  |  _ \| | | |  ___|     / \  | \ | / ___|  / \  |  _ \|_ _|\033[1;93m"
echo "| |\/| | / _ \ | |_) | | | | |_ _____ / _ \ |  \| \___ \ / _ \ | |_) || |\033[1;94m"
echo "| |  | |/ ___ \|  _ <| |_| |  _|_____/ ___ \| |\  |___) / ___ \|  _ < | |\033[1;95m"
echo "|_|  |_/_/   \_\_| \_\\___/|_|      /_/   \_\_| \_|____/_/   \_\_| \_\___|\033[1;96m"
echo
echo "◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆\033[1;92m【 maruf@mail.ccsf.edu 】\033[1;96m◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆"
echo

if [ $# = 0 ] && [ -f $PREFIX/etc/motd ] && [ ! -f ~/.hushlogin ]; then
	cat $PREFIX/etc/motd
fi

if [ -G ~/.termux/shell ]; then
	export SHELL="`realpath ~/.termux/shell`"
else
	for file in $PREFIX/bin/bash $PREFIX/bin/sh /system/bin/sh; do
		if [ -x $file ]; then
			export SHELL=$file
			break
		fi
	done
fi

if [ -f $PREFIX/lib/libtermux-exec.so ]; then
	export LD_PRELOAD=$PREFIX/lib/libtermux-exec.so
	$SHELL -c "busybox true" > /dev/null 2>&1 || unset LD_PRELOAD
fi

if [ -n "$TERM" ]; then
	exec "$SHELL" -l "$@"
else
	exec "$SHELL" "$@"
fi
