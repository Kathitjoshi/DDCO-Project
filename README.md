* DDCO-Project
*	This project focuses on designing and implementing a digital circuit that counts the number of 1s in an 8-bit binary input using iverilog.
* This circuit is essential in bitwise analysis such as error-checking algorithms, digital signal processing,etc.
* The circuit design consists of three main components:
•	Input Register: An 8-bit register to hold the binary input data (data_in).
•	Counting Logic: A combinational logic block, where each bit in the input data is checked individually using AND gates.
•	Output Register: A 4-bit register that holds the final count (count_out), which ranges from 0 to 8.
* The circuit operates as follows: The 8-bit binary data is loaded into the data_in register, and the counting logic iterates through each bit, incrementing the count for each 1 detected. The count is then stored in count_out and can be       used for further processing or display.
