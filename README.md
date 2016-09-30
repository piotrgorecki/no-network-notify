# no-network-notify
Check if your Internet connection is working. When there is some problem, you get system notification.

The checking performs every 10 seconds and use google.com as target host, by default.

## Dependencies
This Bash script was checked under Ubuntu 16.04. It uses notify-send command to show notification.

## Usage
```bash
$ ./no_network_notify.sh &            # run in backgroud, by default uses the google.com host and 10 seconds interval
$ ./no_network_notify.sh bing.com     # uses the bing.com host
$ ./no_network_notify.sh bing.com 20  # uses the bing.com host every 20 sec
```
