# Foxconn Linux application
This is a Foxconn linux application for dell wwan DW5932e and DW5934e devices.<br>
  **FoxFlss:** Tool to unlock Fcc and write RF_Files dynamically(It is not open source).<br>

# License
All open source codes are GPLv2+.<br>

# Notice
  - FoxFlss binary file was built in Ubuntu20.04, it can be used above (include) 20.04<br>
  - This application runs only on ubuntu22.04 and ubuntu24.04,other ubuntu versions and other OS have unverified.

# Building on Ubuntu

## 1. Build
- All details of build or install steps could be found in below:
    1. `pushd Application`
    2. `autoreconf --force --install`
    3. `./configure --prefix=<path>`
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
- FoxFlss version:1.0.10<br>
    1. Update DW5934e RF data files.<br>

- FoxFlss version:1.0.9<br>
    1. Update DW5932e support platform list.<br>
    2. Fix DW5934e can't connect to NW when host cold boot.<br>
    3. Set DW5934e with --test-quick-suspend_resume parameter.<br>

- FoxFlss version:1.0.8<br>
    1. Update RF data.<br>
    2. Correct tuner number for some platform.<br>

- FoxFlss version:1.0.7<br>
    1. Update RF data.<br>

- FoxFlss version:1.0.6<br>
    1. Support dell wwan DW5934e device of writing RF data function.<br>
    2. Automatically set test parameter of MM according to MM version.<br>

- FoxFlss version:1.0.5<br>
    1. Fixed MM calls FoxFlss to unlock without waiting time.<br>
    2. Add test-quick-suspend-resume.conf, fix failed to enter suspend while browsing web pages.<br>

- FoxFlss version:1.0.4<br>
    1. Support dell wwan DW5934e device of Fcc unlock function.<br>

- FoxFlss version:1.0.3<br>
    1. Fixed some issues caused by abnormal module exits.<br>
    2. Modify prefix parameter setting to perform different operations.<br>

- FoxFlss version:1.0.2<br>
    1. Rename of the RF_Files as "DW5932e_RF.dat".<br>
    2. Add a reliable way to detect modem devices automatically.<br>
    3. Remove FoxFlss.service sleep time.<br>

- FoxFlss version:1.0.1<br>
    1. Write default configuration for platform which has not RF_Files.<br>
    2. Add step reboot the module to take effect after writing RF data.<br>

- FoxFlss version:1.0.0<br>
  first version, add FoxFlss tool.<br>
