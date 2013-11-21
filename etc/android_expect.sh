#!/usr/bin/expect

set timeout -1   ;
spawn sudo /usr/local/android-sdk-linux/tools/android update sdk --no-ui;
#expect -re "Do you accept the license*" { send "y\r" }
#interact
expect {
    "Do you accept the license" { exp_send "y\r" ; exp_continue }
    eof
}