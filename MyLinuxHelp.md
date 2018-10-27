# apt-get彻底卸载软件包
### 删除软件及其配置文件
    sudo apt-get --purge remove <package>
### 删除没用的依赖包
    sudo apt-get autoremove <package>
### 此时dpkg的列表中有“rc”状态的软件包，可以执行如下命令做最后清理：
    sudo dpkg -l | grep ^rc | awk '{print $2}' | sudo xargs dpkg -P
# 连接网络
### 开放
### 开启网络接口
    sudo ip link set wlan0 up
### 搜索可用网络
    sudo iw dev wlan0 scan | less
### 连接网络：
    sudo iw dev wlan0 connect [网络 SSID]
### 通过dhcp获取IP
    sudo dhclient wlan0
### 加密
### 安装软件包
    sudo apt-get install wireless-tools wpasupplicant
### 配置无线网络
    sudo nano /etc/network/interfaces
```
auto wlan0
iface wlan0 inet dhcp
wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
```
    sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
```
ctrl_interface=/var/run/wpa_supplicant
network={
ssid="PDCN"
psk="1234567890"
priority=1
}
 
network={
ssid="hyx"
psk="fi93jv9itn"
priority=2
}
```
### 启用无线网线
    sudo ifup wlan0
    sudo ifdown wlan0

# 关闭屏幕
    echo 0 > /sys/class/backlight/intel_backlight/brightness