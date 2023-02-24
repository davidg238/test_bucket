To build:  `make firmware`  

To install:  ` jag flash --exclude-jaguar build/firmware.envelope`

Run on an https://www.ezsbc.com/product/esp32-feather/  , with fully charged LiPo + USB cable to desktop attached.

If run in Flash:

```
rst:0x5 (DEEPSLEEP_RESET),boot:0x13 (SPI_FAST_FLASH_BOOT)
configsip: 0, SPIWP:0xee
clk_drv:0x00,q_drv:0x00,d_drv:0x00,cs0_drv:0x00,hd_drv:0x00,wp_drv:0x00
mode:DIO, clock div:2
load:0x3fff0030,len:184
load:0x40078000,len:12700
ho 0 tail 12 room 4
load:0x40080400,len:2916
entry 0x400805c4
E (53) psram: No PSRAM detected
E (53) spiram: SPI RAM supported, but not found.
[toit] INFO: starting <v2.0.0-alpha.53>
size after 56
Entering deep sleep for 5000ms
ets Jul 29 2019 12:21:46

rst:0x5 (DEEPSLEEP_RESET),boot:0x13 (SPI_FAST_FLASH_BOOT)
configsip: 0, SPIWP:0xee
clk_drv:0x00,q_drv:0x00,d_drv:0x00,cs0_drv:0x00,hd_drv:0x00,wp_drv:0x00
mode:DIO, clock div:2
load:0x3fff0030,len:184
load:0x40078000,len:12700
ho 0 tail 12 room 4
load:0x40080400,len:2916
entry 0x400805c4
E (53) psram: No PSRAM detected
E (53) spiram: SPI RAM supported, but not found.
[toit] INFO: starting <v2.0.0-alpha.53>
size after 57
Entering deep sleep for 5000ms
^C

```


If run in RAM:  
```
david@MSI-7D43:~$ jag monitor -a
Starting serial monitor of port '/dev/ttyUSB0' ...
ets Jul 29 2019 12:21:46

rst:0x5 (DEEPSLEEP_RESET),boot:0x13 (SPI_FAST_FLASH_BOOT)
configsip: 0, SPIWP:0xee
clk_drv:0x00,q_drv:0x00,d_drv:0x00,cs0_drv:0x00,hd_drv:0x00,wp_drv:0x00
mode:DIO, clock div:2
load:0x3fff0030,len:184
load:0x40078000,len:12700
ho 0 tail 12 room 4
load:0x40080400,len:2916
entry 0x400805c4
E (53) psram: No PSRAM detected
E (53) spiram: SPI RAM supported, but not found.
[toit] INFO: starting <v2.0.0-alpha.53>
size after 1
Entering deep sleep for 5000ms
ets Jul 29 2019 12:21:46

rst:0x5 (DEEPSLEEP_RESET),boot:0x13 (SPI_FAST_FLASH_BOOT)
configsip: 0, SPIWP:0xee
clk_drv:0x00,q_drv:0x00,d_drv:0x00,cs0_drv:0x00,hd_drv:0x00,wp_drv:0x00
mode:DIO, clock div:2
load:0x3fff0030,len:184
load:0x40078000,len:12700
ho 0 tail 12 room 4
load:0x40080400,len:2916
entry 0x400805c4
E (53) psram: No PSRAM detected
E (53) spiram: SPI RAM supported, but not found.
[toit] INFO: starting <v2.0.0-alpha.53>
size after 1
Entering deep sleep for 5000ms
ets Jul 29 2019 12:21:46

```