#!/system/bin/sh
count=1 2 3 4 5
for i in $count; do
    # sleep first to avoid issue when called after conn_init
    sleep 1
    if [ ! -f /sys/devices/platform/wcnss_wlan.0/net/wlan0/address ]; then
        echo sta > /sys/module/wlan/parameters/fwpath
    else
        # FIXME: Force restart of NM (lack of udev)
        #kill -9 `pidof NetworkManager`
        break
    fi
done