# Shape-color conflicting

a subsytem of WeDA (CHI 2020)

> [WeDA: Designing and Evaluating A Scale-driven Wearable Diagnostic Assessment System for Children with ADHD](https://dl.acm.org/doi/10.1145/3313831.3376374)

![9bc9ca37-5313-4fcd-a9dd-70a22dc56a7e.png](https://storage.live.com/items/A0F74AFD0BA8282D!1053227?authkey=ABXqzzrLcu36XDU)

The image above uses `./3D_Print_SourceCode/tri_box.scad`. Additional hardware requirements, software configuration, data specifications and circuit diagrams are shown below (in Chinese). One may use [OpenSCAD](https://openscad.org/) to generate `.gcode` files for 3D printing

There is another version using servo motors. Involving files include:

- `./3D_Print_SourceCode/NfcBox_Ard.scad`
- `./3D_Print_SourceCode/NfcBox_Top.scad`
- `./3D_Print_SourceCode/NfcReaderSupporter.scad`
- `./3D_Print_SourceCode/ServoSupporter.scad`
- `./3D_Print_SourceCode/NfcTopShape*`

![faab0583-7adb-474c-b290-4bfdbf8f8758.png](https://storage.live.com/items/A0F74AFD0BA8282D!1053249?authkey=ABXqzzrLcu36XDU)

## 一、硬件清单

| 物品                               | 数量                                    |
| :--------------------------------- | --------------------------------------- |
| 1. Raspberry Pi 3b+ ( Micro SD 卡) | 1                                       |
| 2. Raspberry Pi 3b+ 供电线和插头   | 1                                       |
| 3. 易火眼 ER-302 读写器            | 4或5 （多余的一个可以用来读写物块信息） |
| 4. MG995 伺服电机                  | 4                                       |
| 5. 9V 干电池                       | 4                                       |
| 6. 9V 干电池电池扣                 | 4                                       |
| 7. 杜邦线簧片 + 杜邦线胶壳         | 8 (电池正极负极各一个)                  |
| 8. 1 分 4 可供电 USB Hub           | 1                                       |
| 9. USB Hub 供电线                  | 1                                       |
| 10.  公-母 杜邦线                  | 12                                      |
| 11.  公-公 杜邦线                  | 4                                       |
| 12. NFC 标签                       | 16 + ( 有的时候 NFC 标签本来就是坏的 )  |

- 电池扣本身并没有杜邦线引出，可使用**压线钳**、杜邦线簧片和杜邦线胶壳 (7) 来制作

## 二、接线图

> - 当以此方向放置 Raspberry Pi 时：
>
>   <img src="https://reakuw.dm.files.1drv.com/y4mKsw3StmPHbUKkRNFkQmM36Wl9Xj2qJeOPNIfQ-01trhBmAbHGdAL41pT_9hOZxZN931dBU0N-eCHzhClK1c1NOrU3WVEZ9I2aqI-sInInp_7zReOnx-Cr6DcC2QNZ9sHiJ_CbkTkhtQ9lkC3OK7eqc632vbvFqugTbJAvhMJXHp9PevEaIqAFqZ5lK8hm1ynwzs6muV9NEdKUA_EsQ8hIw?" width=30%>
>
>   引脚信息如下图所示：
>
> <img src="https://clynsq.dm.files.1drv.com/y4m7ss1pJ_lS1oRL1r2PM1rcJEInJNVoXT1p1l2GIHPRxQaqMT7XerKEGLebhkucYeXqc8dHiuw-HPTmHk4DF55oaqiqLpm5J6JzIQzkZ6JQyKCeF1bL5TeGlwOZUKD_0x6Il8ZgMhihC-KucLByWx70PAPjX54aoIps5GONVrVsoVVkZBreKOToV_xuDfCL58vrcVo_Mf1IC_Vl-3A_9qKww?" width=50%>
>
> - 约定下文所述引脚耗均为**物理引脚**

<img src="https://fksbow.dm.files.1drv.com/y4msSsPoeDcVPT7TcubUhWitzfdy0d94J2BAVjnCft4dLsNmfsEWjGfTsAN8oOnMXw8QmoZyht1lHo0DTO_0vWE4P9ZV6NBWkHOWwpNduhsM6joBlVWTIoLqWIuQG0OH8ePU70DnvER6d_isS690RxWyuQw3pxGBK1Pw0_UsDDCLFcN6HYClwQlwIfmLgmO2lypzwVSvl5w6YwPKUm5fWQ9Dg?" width=100% />

## 三、环境配置

拿到 Raspberry Pi，烧录系统启动后:

- 按照上图连线
- 启动 Pi
  - 若烧录的是Desktop版，开启 SSH 可参考: https://blog.csdn.net/HOOLOO/article/details/78682413
  - 若烧录的是 LITE 版，开启 SSH 可参考: https://blog.csdn.net/ein_coco/article/details/78743930
- 将 `requirements.txt` 和 `MultiShape.py` 拷贝到 Pi 中
- 执行 `pip3 install -r requirements.txt`
  - 如果是 LITE 版系统，则需先安装 `pip` : `sudo apt-get install python3-pip`
- 执行 `python3 MultiShape.py` 启动整个系统
- 如需开机自动启动，参考石墨文档中 **配置systemd服务实现程序开机启动**

## 四、其他

- NFC 标签内容及格式：

  ```shell
  # <color>&&<shape>

  red&&triangle
  yellow&&circle
  ```
- 脚本中颜色和形状对应的数据包内容

  | 颜色   | 颜色代码 | 形状     | 形状代码 |
  | ------ | -------- | -------- | -------- |
  | blue   | 00       | square   | 00       |
  | yellow | 01       | triangle | 01       |
  | red    | 02       | round    | 02       |
  | green  | 03       | pentagon | 03       |
- 数据包格式和内容详见石墨文档

[^杜邦线]: 上图中左上方四根红线为 `公 - 公`，其余 12 根为 `公 - 母` 线；与电池相连的 8 根线需自制。
