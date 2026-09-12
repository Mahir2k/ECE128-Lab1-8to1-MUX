ECE 128 Lab 1 – 8-to-1 Multiplexer
Project Description
This project implements an 8-to-1 multiplexer using Verilog on a Basys 3 FPGA board.
The 8-to-1 MUX has eight data inputs, D[7:0], three select inputs, S[2:0], and one output, Y. The select inputs determine which data input is passed to the output.
Three Verilog modeling methods were implemented:
Structural Modeling
Behavioral Modeling
Dataflow Modeling
The structural model was also used for simulation and FPGA implementation.
Project Files
8TO1DESIGN.v – Structural 8-to-1 MUX design
mux8to1_behavioral.v – Behavioral 8-to-1 MUX design
mux8to1_dataflow.v – Dataflow 8-to-1 MUX design
8TO1TESTBENCH.v – Testbench for the structural model
mux8to1_basys3.xdc – Basys 3 pin constraints
MUX Operation
S[2]
S[1]
S[0]
Output
0
0
0
D[0]
0
0
1
D[1]
0
1
0
D[2]
0
1
1
D[3]
1
0
0
D[4]
1
0
1
D[5]
1
1
0
D[6]
1
1
1
D[7]

Simulation
The structural model was simulated using the testbench.
The testbench uses:
D = 8'b01011010;
The selector is tested through all eight combinations:
000
001
010
011
100
101
110
111
For D = 8'b01011010, the expected output sequence is:
0, 1, 0, 1, 1, 0, 1, 0
Simulation Procedure
Add the structural design and testbench files to the Vivado project.
Set mux8to1_structural_tb as the simulation top module.
Run Behavioral Simulation.
Verify that S[2:0] changes from 000 through 111.
Verify that Y follows the selected bit of D[7:0].
FPGA Implementation
The structural model was implemented on a Basys 3 FPGA board.
Switch and LED Mapping
Basys 3 I/O
Verilog Signal
SW0
D[0]
SW1
D[1]
SW2
D[2]
SW3
D[3]
SW4
D[4]
SW5
D[5]
SW6
D[6]
SW7
D[7]
SW8
S[0]
SW9
S[1]
SW10
S[2]
LED0
Y

FPGA Procedure
Set mux8to1_structural as the top design module.
Add the Basys 3 constraint file.
Run Synthesis.
Run Implementation.
Generate the bitstream.
Open Hardware Manager.
Connect to the Basys 3 board.
Program the device using the generated bitstream.
Use SW0–SW7 as the data inputs.
Use SW8–SW10 as the select inputs.
Observe LED0 as the MUX output.
Area Utilization
The three modeling methods produced the following implemented resource usage:
Modeling Method
Slice LUTs
F7 Muxes
Slice
LUT as Logic
Bonded IOB
Structural
2
1
1
2
12
Behavioral
2
1
1
2
12
Dataflow
2
1
1
2
12

All three models used the same implemented resources for this 8-to-1 MUX.
Repository
GitHub Repository:
https://github.com/Mahir2k/ECE128-Lab1-8to1-MUX

