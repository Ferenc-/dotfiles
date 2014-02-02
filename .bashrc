# HOpefully this will fix aterm unicode problem
#export LANG=C

# OpenWRT development 
#export PATH=$PATH:/mnt/backup/Devel/MIPS32/OpenWRT/trunk/staging_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33/bin/
#export STAGING_DIR=/mnt/backup/Devel/MIPS32/OpenWRT/trunk/staging_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33/

#export PATH=$PATH:/mnt/backup/Devel/MIPS32/OpenWRT/backfire/staging_dir/toolchain-mips_r2_gcc-4.3.3+cs_uClibc-0.9.30.1/bin/
#export STAGING_DIR=/mnt/backup/Devel/MIPS32/OpenWRT/backfire/staging_dir/toolchain-mips_r2_gcc-4.3.3+cs_uClibc-0.9.30.1/

#export PATH="$PATH:/home/ferenc/Downloads/sbt/bin"
export PATH="$PATH:/mnt/backup/Devel/Scala/sbt/bin"
#export PATH="/home/ferenc/Komodo-IDE-7/bin:$PATH"


if [ $TERM == 'xterm' ]
then
#   bell is turned of in .inputrc
#	xset b off
#
	xset -dpms
fi


test -s ~/.alias && . ~/.alias || true
