# Volume control



Using Arduino or NodeMCU and a rotary encoder to control volume levels on your PC.



## First ofc

    git clone https://github.com/VayerMaking/volumecontroller

## Requirements

  1. [Processing](https://processing.org/download/)



  2. [Arduino IDE](https://www.arduino.cc/en/main/software)


## Schematics

![schematic for nodeMCU esp8266 module](https://github.com/VayerMaking/volumecontroller/blob/master/images/image.png)

![schematic for arduino nano](https://github.com/VayerMaking/volumecontroller/blob/master/images/Screenshot_20200801_175618.png)

the schematic is taken from [circuito.io](https://www.circuito.io/)
## How to use

```sh
volumecontrol.sh
```
contains a bash script which can be ran on startup so the volume script is always running

```sh
volumecontrol.ino
```
contains the Arduino code which sends serial data from the sensor to the PC

```sh
volumecontrol.pde
```
contains the processing code which reads from the serial data from the Arduino/NodeMCU and simulates keypresses

## Photos

![photo1](https://github.com/VayerMaking/volumecontroller/blob/master/images/IMG_20200915_175421.jpg)

![photo2](https://github.com/VayerMaking/volumecontroller/blob/master/images/IMG_20200915_175523.jpg)

![photo3](https://github.com/VayerMaking/volumecontroller/blob/master/images/IMG_20200915_175600.jpg)

![photo4](https://github.com/VayerMaking/volumecontroller/blob/master/images/IMG_20200915_192801.jpg)

## Author

Martin Vayer - [VayerMaking](https://github.com/VayerMaking)
