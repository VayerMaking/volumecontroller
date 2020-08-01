# Volume control



Using Arduino and a rotary encoder to control volume levels on your PC.



## First ofc

    git clone https://github.com/VayerMaking/volumecontrol

## Requirements

  1. [Processing](https://processing.org/download/)



  2. [Arduino IDE](https://www.arduino.cc/en/main/software)




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
contains the processing code which reads from the serial data from the Arduino and simulates keypresses

asfd

## Author

Martin Vayer - [VayerMaking](https://github.com/VayerMaking)
