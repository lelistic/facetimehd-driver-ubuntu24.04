{
sudo apt update && sudo apt install -y debhelper git dkms curl;

cd bcwc_pcie && sudo dkms add . ;

dkms status;

sudo dkms build facetimehd/0.6.8;

sudo dkms mktarball -m facetimehd -v 0.6.8;

sudo dkms install -m facetimehd -v 0.6.8;

v4l2-ctl --list-devices;

sudo dmesg | grep facetimehd;
}
