{
sudo apt update && sudo apt install -y debhelper git dkms curl;

cd bcwc_pcie && sudo dkms add . ;

dkms status;

sudo dkms build --force facetimehd/0.6.8;

sudo dkms install --force -m facetimehd -v 0.6.8;

v4l2-ctl --list-devices;

sudo dmesg | grep facetimehd;
}
