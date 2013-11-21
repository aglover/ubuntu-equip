#!/usr/bin/expect

set timeout -1;
spawn sudo /usr/local/android-sdk-linux/tools/android update sdk --filter platform-tools,1,2,3,4,5,6,7,8,9,10,11,12,13,14,41,42,43,44,45,47,48,50,52,53,54,55,56,57 --no-ui;
expect {
    "Do you accept the license" { exp_send "y\r" ; exp_continue }
    eof
}