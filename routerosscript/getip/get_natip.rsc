# from mikrotik forum
# modif by @afrahman23
# Troubleshoot your nat
# 1. Change src-address
# 2. Copy paste on /system script
# 3. Open mynat.txt
{
/tool fetch url="https://fancy-mountain-00e1.afrahman.workers.dev/" mode=http  src-address=192.168.9.1 dst-path=mynat.txt
local ip [file get mynat.txt contents ]
put $ip
}