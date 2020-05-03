# SAP1-VHDL
An implementation of a simple processor (SAP1) using VHDL


### Architecture
SAP1 is an accumulator-based processor. It has limited number of registers, and a small memory (16 x 8 RAM).
The architecture used in this project is based on this image *(More info. can be found in References section)*.

![Architecture](../assets/Architecture.jpeg?raw=true)

Although, I used MAR only for addressing, not as an input register; as INPUT operation is not implemented.

### Instruction Set
SAP1 has a limited instruction set. It can only do basic operations: Add and Sub namely.

Here's a table of opcodes used:

![InstructionSet](../assets/Instructions.jpeg?raw=true)

The machine cycle consists of 6 clock cycles (t0:t5) divided as follows:
- **Fetch Cycle:** Spans from t0 to t2 and must be implemented for each instruction.
- **Execution Cycle:** Spans from t3 to t5. Depends on the instruction to be executed :D


### Simulation Results


### References

1. https://deeprajbhujel.blogspot.com/2015/12/sap-1-instructions-and-instruction-cycle.html
2. https://www.slideshare.net/Jawad_Ahmad/sap-1-47400149