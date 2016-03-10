  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .set_pf            #  1     0    5      OPC=callq_label   
  clc                      #  2     0x5  1      OPC=clc           
  callq .read_pf_into_rcx  #  3     0x6  5      OPC=callq_label   
  adcw %cx, %bx            #  4     0xb  3      OPC=adcw_r16_r16  
  retq                     #  5     0xe  1      OPC=retq          
                                                                  
.size target, .-target
