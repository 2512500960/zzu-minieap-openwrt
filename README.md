从别人哪里import过来！
从别人哪里import过来，
从别人哪里import过来，
重要的事情说三遍
# minieap for OpenWRT

## Build

First download [OpenWRT SDK](https://downloads.openwrt.org/) for your device.

```sh
cd /path/to/your/sdk
git clone https://github.com/GZHU-Dress/openwrt-minieap.git package/minieap
make menuconfig # choose `minieap` in section `Network`
make package/minieap/compile V=s
```
