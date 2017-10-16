
termux_step_make () {

    #gem install sqlite3 -v 1.3.13 -i lol

    #gem install sqlite3 --platform=aarch64-android-linux -v 1.3.13 -i lol -- --with-sqlite3-dir=/data/local/tmp --with-opt-dir=/data/local/tmp/lib/ --platform=aarch64-android-linux

    cd /home/builder/msfdroid-packages/sqlite3-1.3.13
    export CONFIGURE_ARGS="--with-cflags='$CFLAGS' --with-ldflags='$LDFLAGS'"
    rake cross native gem

    #rake cross
    #rake-compiler cross-ruby

    #echo $CC
    #bundle config CC $CC
    #bundle config CFLAGS $CFLAGS
    #bundle config CXXFLAGS $CXXFLAGS
    #bundle config CPPFLAGS $CPPFLAGS
    #bundle config LDFLAGS $LDFLAGS
    #bundle --path lol
    #gem unpack sqlite3
    #gem install sqlite3 --platform=aarch64-android-linux -v 1.3.13 -i lol -- --with-sqlite3-dir=/data/local/tmp --with-opt-dir=/data/local/tmp/lib/ --platform=aarch64-android-linux
    #echo $CC
    #gem install sqlite3 -v 1.3.13 --platform aarch64-android-linux -i lol -- --with-ldflags=$LDFLAGS --with-cflags=$CFLAGS --with-cppflags=$CPPFLAGS --with-cc=$CC

    #cd /home/builder/.build/rubyu/sqlite3-1.3.13
    #rake compile
    #gem install sqlite3 -v 1.3.13 -i lol -- --with-sqlite3-include=/data/local/tmp/include --with-sqlite3-lib=/data/local/tmp/lib
}

#echo "ENV"
#env
#echo "GEM ENV"
#gem env
#gem install sqlite3 -v 1.3.13 -i lol -- --with-opt-include=/usr/include

