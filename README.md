# facetimehd-driver-ubuntu24.04
Installing the FaceTime HD driver for Ubuntu 24.04 LTS !!

## Troubleshooting

### DKMS Tree Already Contains: facetimehd-0.6.8

If you encounter the following error message during the installation or update process:

```
Error! DKMS tree already contains: facetimehd-0.6.8
```

This indicates that the `facetimehd-0.6.8` module is already present in the DKMS (Dynamic Kernel Module Support) tree. Follow the steps below to resolve this issue by either removing the existing module and re-adding it or updating the existing module.

#### Method 1: Remove and Re-add the Module

1. **Remove the existing module**:
    ```bash
    sudo dkms remove -m facetimehd -v 0.6.8 --all
    ```

2. **Add the module again**:
    ```bash
    sudo dkms add -m facetimehd -v 0.6.8
    ```

3. **Build and install the module**:
    ```bash
    sudo dkms build -m facetimehd -v 0.6.8
    sudo dkms install -m facetimehd -v 0.6.8
    ```

#### Method 2: Update the Existing Module

To update the existing module without removing it, use the `--force` option:

1. **Update and rebuild the module**:
    ```bash
    sudo dkms build -m facetimehd -v 0.6.8 --force
    sudo dkms install -m facetimehd -v 0.6.8 --force
    ```

#### Method 3: If the Version Number Has Changed

If you have a new version of the `facetimehd` module, follow these steps to add and build the new version:

1. **Add the new version**:
    ```bash
    sudo dkms add -m facetimehd -v NEW_VERSION
    ```

2. **Build and install the new version**:
    ```bash
    sudo dkms build -m facetimehd -v NEW_VERSION
    sudo dkms install -m facetimehd -v NEW_VERSION
    ```

Replace `NEW_VERSION` with the actual new version number of the `facetimehd` module.

By following these steps, you should be able to resolve the `DKMS tree already contains: facetimehd-0.6.8` error and successfully manage the `facetimehd` module in your DKMS tree.
