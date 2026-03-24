# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

## Summary
In this lab, we developed a D-Latch by examining the circuitry for an SR latch and adjusted the code on verilog. The DLatch has the inputs D and E(or Clock) as the input, with the output of Q. This ensures that the Q output must take the value of D when the enable is 1. Since no Else clause is given the latch will be synthesized ot maintain the value of Q when Clock is 0. 

We then took this D latch, in combination with mux and demux created in earlier labs, created a basic computer memory system using a store command. In order to do this, we had have two demux's: one with an enable select, and one with 8 inputs to run through 4 different dlatches, each containing 8 bits to contain 4 bytes of data. We then ran this through a mux so that the user could select certain switches, save those to meemory through the DLatches, and the see the output of that saved memory through the mux to the LED. 

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?

### What is the meaning of always @(*) in a sensitivity block?

### What importance is memory to digital circuits?
