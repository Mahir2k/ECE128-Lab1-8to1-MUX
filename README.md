# ECE 128 Lab 1 – 8-to-1 Multiplexer

## Project Description

This project implements an 8-to-1 multiplexer using Verilog on a Basys 3 FPGA board.

The 8-to-1 MUX has eight data inputs, `D[7:0]`, three select inputs, `S[2:0]`, and one output, `Y`. The select inputs determine which data input is passed to the output.

Three Verilog modeling methods were implemented:

- Structural Modeling
- Behavioral Modeling
- Dataflow Modeling

The structural model was also used for simulation and FPGA implementation.

---

## Project Files

| File | Description |
|---|---|
| `8TO1DESIGN.v` | Structural 8-to-1 MUX design |
| `mux8to1_behavioral.v` | Behavioral 8-to-1 MUX design |
| `mux8to1_dataflow.v` | Dataflow 8-to-1 MUX design |
| `8TO1TESTBENCH.v` | Testbench for the structural model |
| `mux8to1_basys3.xdc` | Basys 3 pin constraints |

---

## MUX Operation

| S[2] | S[1] | S[0] | Output |
|---:|---:|---:|---|
| 0 | 0 | 0 | D[0] |
| 0 | 0 | 1 | D[1] |
| 0 | 1 | 0 | D[2] |
| 0 | 1 | 1 | D[3] |
| 1 | 0 | 0 | D[4] |
| 1 | 0 | 1 | D[5] |
| 1 | 1 | 0 | D[6] |
| 1 | 1 | 1 | D[7] |

---

## Simulation

The structural model was simulated using the testbench.

The testbench uses:

```text
D = 8'b01011010;
