#对脚本进行语法检查：
bash -n myscript.sh

#跟踪脚本里每个命令的执行：
bash -v myscripts.sh

#跟踪脚本里每个命令的执行并附加扩充信息：
bash -x myscript.sh


#你可以在脚本头部使用set -o verbose和set -o xtrace来永久指定-v和-o。
