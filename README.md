# Skywaters 130nm LDO Design Integrated in Caravel

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![CI](https://github.com/efabless/caravel_user_project_analog/actions/workflows/user_project_ci.yml/badge.svg)](https://github.com/efabless/caravel_user_project_analog/actions/workflows/user_project_ci.yml) [![Caravan Build](https://github.com/efabless/caravel_user_project_analog/actions/workflows/caravan_build.yml/badge.svg)](https://github.com/efabless/caravel_user_project_analog/actions/workflows/caravan_build.yml)


This is a caravel that has an LDO Design implemented on Skywaters 130nm technology.We have 2 versions of our LDO. The difference between the 2 versions lies in the bandgap compensation capacitor and the startup circuit.


## Circuit Design
The implementation of the LDO version 1 is as follows:
The pins are integrated in caravel as follows:
Enable pin is connected to io_in_3v3[14].
GND pin is connected to io_analog[7]
VDD pin is connected to io_analog[6].
ldo_out pin is connected to io_analog[5].

### Schematic

![Image of LDO schematic](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/Testbench_schematic.png)

### Error Amplifier 

![Image of LDO_Error amplifier](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/Error_Amp.png)

### Bandgap

![Image of LDO_BGR](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/Bandgap_symbol.png)


## LDO Simulation

We have an enable switch so all the following analysis when the enable signal is high.

### a. DC analysis

We used dc analysis for displaying the operating point for proper biasing of transistors and also dc sweep of output voltage against variations in supply and temprature to calculate dropout voltage,line regulation,temperature coefficient.

### Supply variation
We made dc sweep on the supply and plotted voltage of the output node and vdd node overlaid on the same plot
@Load current = 0.1mA
![Image of LDO_Vout_vs_Vin](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/vddsweep100u.png)

@Load current = 10mA
![Image of LDO_Vout_vs_Vin](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/vddsweep10m.png)

@Load current = 100mA
![Image of LDO_Vout_vs_Vin](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/vddsweep100m.png)

### Temperature variation
We made dc sweep on temperature from 0 to 85°C and plotted the output voltage vs temperature from which we found temperature coeffiecient in ppm/°C.
@Load current = 100uA
![Image of LDO_Vout_vs_Vin](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/tempvar100u.png)

@Load current = 10mA
![Image of LDO_Vout_vs_Vin](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/tempvar100u.png)

### c. AC analysis
#### PSRR
We used AC analysis by injecting small ac signal over the supply and plotted the output voltage in dB which refers to the PSRR vs Frequency.

![Image of LDO_PSRR](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/psrr50u.png)
### Stability analysis
We made the above testbench to cut the feedback loop of the ldo and inject ac signal and then measure the loop gain and phase to find phase margin.

### d. Transient analysis
#### Line Transient 
We used transient analysis to show the line transient by varying the supply from 0 to vdd where the nominal supply voltage is 2.3v.
When VDD varies from 0 to 2.3v
![Image of LDO_Transient](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/tran02.3v.png)
When VDD varies from 2 to 3v
![Image of LDO_Transient](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/line_tran_2v3v.png)

#### Load Transient 
The load is varied from 0.1mA to 10mA where the load is modeled as current source varied as PWL source where the output voltage suffers from under shoot of 40mV due to change of load current from 0.1mA to 10mA in 10uS then it settles back to its original value so we used this analysis to measure the load regulation. 

The plot includes load current variation and ac-coupled ldo_output overlaid on the same plot.
![Image of LDO_netlist](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/load_transient_ac_coupled.png)

#### Turn-on Characteristic
We have an enable signal so we varied it from 0 to Vin in 0.1uS and plotted the ldo_out. The start up time is less than 10uS.
![Image of LDO_netlist](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/stup_50m.png)

### e. Testbench netlist
![Image of LDO_netlist](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/TB.png)

### Simulation results
The typical conditions are tt corner ,load of 50uA, T=27°C , VDD=2.3V , We have a script to automate running process corners then getting their statistical distribution where the variation of the load from 50uA till 100mA is included in the corners  

  Specification  |      TT                  
-----------------| ---------------
Temperature Coeffiecient   | 49.4 ppm/°C
Dropout Voltage @IL=0.1mA  | 0.211mV 
Dropout Voltage @IL=10mA   |  85.6mV @IL=10mA
Dropout Voltage @IL=100mA  |  168.45mV @IL=100mA
Line Regulation            | 0.0325 mv/v
Load Regulation            | 0.06mV    IL=0.1mA till IL=10mA
PSRR @ 100Hz               | 88.1dB
PSRR @ 100kHz              | 44.7dB
Load range                 | 50uA -> 100mA
Phase Margin               | 50.1°
Quiescent Current          | 130uA
Startup time               | 7uS


## Layout Design


## Analog User Project Documentation

Running LVS command:
```
python3 scripts/run_standard_lvs.py gds/ldo_v1/ldo_flattened_f.gds.gz extracted.spi xschem/ldo_v1/ldo_v1_lvs.spice report.lvs ldo_flattened_f
```

Refer to [README](docs/source/index.rst) for this sample project documentation. 




The implementation of the LDO version 2 is as follows:

The pins are integrated in caravel as follows:
Enable pin is connected to io_in_3v3[12].
GND pin is connected to io_analog[0]
VDD pin is connected to io_analog[4].
ldo_out pin is connected to io_analog[2,3]: we used two available thin pads connected to each other to be able to carry high currents.


### Schematic

![Image of LDO schematic](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/Testbench_schematic.png)

### Error Amplifier 

![Image of LDO_Error amplifier](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/Error_Amp.png)

### Bandgap

![Image of LDO_BGR](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/bgrv2.png)


## LDO Simulation

We have an enable switch so all the following analysis when the enable signal is high.

### a. DC analysis

We used dc analysis for displaying the operating point for proper biasing of transistors and also dc sweep of output voltage against variations in supply and temprature to calculate dropout voltage,line regulation,temperature coefficient.

### Supply variation
We made dc sweep on the supply and plotted voltage of the output node and vdd node overlaid on the same plot
@Load current = 0.1mA
![Image of LDO_Vout_vs_Vin](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/vddsweep100u.png)

@Load current = 10mA
![Image of LDO_Vout_vs_Vin](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/vddsweep10m.png)

@Load current = 100mA
![Image of LDO_Vout_vs_Vin](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/vddsweep100m.png)

### Temperature variation
We made dc sweep on temperature from 0 to 85°C and plotted the output voltage vs temperature from which we found temperature coeffiecient in ppm/°C.
@Load current = 100uA
![Image of LDO_Vout_vs_Vin](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/tempvar100u.png)

@Load current = 10mA
![Image of LDO_Vout_vs_Vin](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/tempvar100u.png)

### c. AC analysis
#### PSRR
We used AC analysis by injecting small ac signal over the supply and plotted the output voltage in dB which refers to the PSRR vs Frequency.

![Image of LDO_PSRR](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/psrr_50uv2.png)
### Stability analysis
We made the above testbench to cut the feedback loop of the ldo and inject ac signal and then measure the loop gain and phase to find phase margin.

### d. Transient analysis
#### Line Transient 
We used transient analysis to show the line transient by varying the supply from 0 to vdd where the nominal supply voltage is 2.3v.
When VDD varies from 0 to 2.3v
![Image of LDO_Transient](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/tran02.3_v2.png)
When VDD varies from 2 to 3v
![Image of LDO_Transient](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/line_tran_v2.png)

#### Load Transient 
The load is varied from 0.1mA to 10mA where the load is modeled as current source varied as PWL source where the output voltage suffers from under shoot of 40mV due to change of load current from 0.1mA to 10mA in 10uS then it settles back to its original value so we used this analysis to measure the load regulation. 

The plot includes load current variation and ac-coupled ldo_output overlaid on the same plot.
![Image of LDO_netlist](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/load_transient_ac_coupled.png)

#### Turn-on Characteristic
We have an enable signal so we varied it from 0 to Vin in 0.1uS and plotted the ldo_out. The start up time is less than 10uS.
![Image of LDO_netlist](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/stup_50m_v2.png)

### e. Testbench netlist
![Image of LDO_netlist](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/TB.png)

### Simulation results
The typical conditions are tt corner ,load of 50uA, T=27°C , VDD=2.3V , We have a script to automate running process corners then getting their statistical distribution where the variation of the load from 50uA till 100mA is included in the corners  

  Specification  |      TT                  
-----------------| ---------------
Temperature Coeffiecient   | 49.4 ppm/°C
Dropout Voltage @IL=0.1mA  | 0.211mV 
Dropout Voltage @IL=10mA   |  85.6mV @IL=10mA
Dropout Voltage @IL=100mA  |  168.45mV @IL=100mA
Line Regulation            | 0.0325 mv/v
Load Regulation            | 0.06mV    IL=0.1mA till IL=10mA
PSRR @ 100Hz               | 84.3dB
PSRR @ 100kHz              | 27dB
Load range                 | 50uA -> 100mA
Phase Margin               | 50.1°
Quiescent Current          | 128uA
Startup time               | 1.3uS


## Layout Design


## Analog User Project Documentation

Running LVS command:
```
python3 scripts/run_standard_lvs.py gds/ldo_v1/ldo_flattened_f.gds.gz extracted.spi xschem/ldo_v1/ldo_v1_lvs.spice report.lvs ldo_flattened_f
```

Refer to [README](docs/source/index.rst) for this sample project documentation. 









