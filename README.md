# SAP1-VHDL
An implementation of a simple processor (SAP1) using VHDL


### Architecture
SAP1 is an accumulator-based processor. It has limited number of registers, and a small memory (16 x 8 RAM).
The architecture used in this project is based on this image *(More info. can be found in References section)*.

![Architecture](../assets/Architecture.jpeg?raw=true)

Although, I used MAR only for addressing, not as an input register; as INPUT operation is not implemented.\
Also I implemented all control signals as active high.

### Instruction Set
SAP1 has a limited instruction set. It can only do basic operations: Add and Sub namely.

Here's a table of opcodes used:

![InstructionSet](../assets/Instructions.jpeg?raw=true)

The machine cycle consists of 6 clock cycles (t0:t5) divided as follows:
- **Fetch Cycle:** Spans from t0 to t2 and must be implemented for each instruction. 
- **Execution Cycle:** Spans from t3 to t5. Depends on the instruction to be executed :D


### Simulation Results

The pre-loaded program in the memory component is as follows:

> LDA @9h\
> OUT\
> ADD @Ah\
> OUT\
> SUB @Bh\
> OUT\
> HLT

Content of data section of the memory:

Address 0x9 --> 6\
Address 0xA --> 8\
Address 0xB --> 3

Here are snapshots of the simulation test bench. 

**LDA**


![LDA](../assets/LDA.jpg?raw=true)
![LDA_OUT](../assets/OUT_LDA.jpg?raw=true)

*Note:* Here, you can see the output instruction is delaying by 1 cycle (it should give output at t3, not t4). 
However, the controller gives signals in the right time. So, I'm still to find out the reason behind the delayed response.

**ADD**

![ADD](../assets/ADD.jpg?raw=true)
![ADD_OUT](../assets/OUT_ADD.jpg?raw=true)

Output is equal to 0xE (14) which is (6 + 8)


**SUB**

![SUB](../assets/SUB.png?raw=true)
![SUB_OUT](../assets/OUT_SUB.jpg?raw=true)

Output is equal to 0xB (11) which is (14 - 3)


**HLT**

![HLT](../assets/HLT.jpg?raw=true)

You can see the active_clk (which is the clk for all the system except for the Controller) is no longer running.

Thus, the controller is running, but nothing else is happening in the system (No operations are executed).

### References

1. https://deeprajbhujel.blogspot.com/2015/12/sap-1-instructions-and-instruction-cycle.html
2. https://www.slideshare.net/Jawad_Ahmad/sap-1-47400149