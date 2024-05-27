# Foxconn Linux application
This is a Foxconn linux application for dell wwan DW5932e devices.<br>
  **FoxFlss:** Tool to unlock Fcc and write RF_Files dynamically(It is not open source).<br>

# License
All open source codes are GPLv2+.<br>

# Notice
  - FoxFlss binary file was built in Ubuntu18.04, it can be used above (include) 18.04<br>
  - This application runs only on ubuntu22.04,other ubuntu versions and other OS have unverified.

# Building on Ubuntu

## 1. Build
- All details of build or install steps could be found in below:
    1. `pushd Application`
    2. `autoreconf --force --install`
    3. `./configure --prefix=/usr`
    4. `make`
    5. `sudo make install`
    6. `sudo systemctl daemon-reload`
    7. `sudo systemctl enable FoxFlss.service`
    8. `sudo systemctl start FoxFlss.service`
    9. `popd`

## 2. Link
- In order to enable FoxFlss unlock Fcc function automatically by ModemManager, you shall put our third party tool script into ${libdir}/ModemManager/fcc-unlock.d
    1. `sudo mkdir -p /usr/lib/x86_64-linux-gnu/ModemManager/fcc-unlock.d`
    2. `sudo ln -sft /usr/lib/x86_64-linux-gnu/ModemManager/fcc-unlock.d/ /opt/foxconn/fcc-unlock.d/*`

# Release history
- FoxFlss version:1.0.1<br>
    1. Write default configuration for platform which has not RF_Files.<br>
    2. Add step reboot the module to take effect after writing RF data.<br>

- FoxFlss version:1.0.0<br>
  first version, add FoxFlss tool.<br>
