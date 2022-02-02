# CS61CPU

Look ma, I made a CPU! Here's what I did:  


### Part A:  
We first discussed our approaches and ideas before doing each of the three tasks (ALU, register file and addi instruction), and then go on and implement each, compare the solution and maintain the one we think is a better implementation. Since most of them are straightforward in the sense that by utilizing what we have learned from the class (MUXs, registers and some other wiring techniques) the solution is usually easy to come up with. For ALU, we both agreed that naively going through all the possible arithmetic operations and then letting the control bit to decide which operation to take is the best solution; In regfile, we figured out the functionality of writeEnable of registers!! So we can preserve the value if we turn off the WE, and change the value if we turn it on. The thing that challenged us is to figure out the DeMux will produce only one valid value and produce 0 for all other values so we are guaranteed that only one writeEnable bit will pass through if there were one. Also we implemented two Muxes for two read_data1 and read_data2 to parallelly attain the register values.  

Justin:  
&nbsp; &nbsp; &nbsp; &nbsp; The ALU was used as the eventual version  

Rixiao:  
&nbsp; &nbsp; &nbsp; &nbsp; RegFile and addi were utilized.  


### Part B:  
&nbsp; &nbsp; &nbsp; &nbsp; In part B, we decided that having each of us both implementing the parts and then coming up with different solutions to compare is kind of a too luxurious waste of time, then for most of the design, we connected on zoom and screen shared to discuss the design choice and solve the confusion we had, after implementing one of the cases, we just leave the repetitive work aside for take-home. (like copy-paste similar instructions within the same type) Some important design choices in our control logic is to realize that only one of the options we have is going through the circuit, so we had a serial two-choice MUX for select bits like ASel and BSel. Out of all the instructions, we know only 1 of them is passing through currently; take the example of selecting which ASel bit to go through, since we used a comparator to compare the opcode to get which type of instruction it is, we will only get one of them to be 1 (which means =) since we cannot have an instruction being simultaneously two different types. Since only one of them is going to be 1, and all other bits are going to be 0, (which means this instruction is not of those types) we can use all of them as selectBits of MUXes, and serially connecting them, having the 0th data bit of each MUX to be connected. (transmitting the useful data to the output, which is the ASel in this case)  
&nbsp; &nbsp; &nbsp; &nbsp; A similar idea of having only one working instruction is the use of OR gate, having a bunch of instructions being input bits, knowing that only one of them is going to be valid bit 1; e.g. the implementation of alu-add, which is the most commonly used alu procedure, used in immediate addition and addition, where branch, store, load, and jump all depend upon for calculating the relative address. However, we know only one instruction is implemented at a time, so an OR gate solves the problem by knowi ng that if any one of them is included, then we output 1.  
&nbsp; &nbsp; &nbsp; &nbsp; Otherwise, most of them are AND and OR gates to determine that if certain inputs (funct3, func7 codes and opcode) are satisfied, we produce a 1 or 0 accordingly, either as a Select Bit or as one of the factors for further determining what select Bit should be outputted.  


Justin:  
&nbsp; &nbsp; &nbsp; &nbsp; discussed the approaches of the design choice  
&nbsp; &nbsp; &nbsp; &nbsp; debugged the errors in the circuit  
&nbsp; &nbsp; &nbsp; &nbsp; wrote I-type and S-type unit tests  
&nbsp; &nbsp; &nbsp; &nbsp; edge-cases, integration tests  

Rixiao:  
&nbsp; &nbsp; &nbsp; &nbsp; made most of the implementation  
&nbsp; &nbsp; &nbsp; &nbsp; wrote R-type, SB-type, U and UJ-type unit tests  
&nbsp; &nbsp; &nbsp; &nbsp; edge-case tests, integration tests  
