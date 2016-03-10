  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .move_016_008_bx_r8b_r9b    #  1     0     5      OPC=callq_label   
  callq .move_016_008_bx_r12b_r13b  #  2     0x5   5      OPC=callq_label   
  clc                               #  3     0xa   1      OPC=clc           
  adcb %r13b, %r9b                  #  4     0xb   3      OPC=adcb_r8_r8    
  adcw %bx, %bx                     #  5     0xe   3      OPC=adcw_r16_r16  
  retq                              #  6     0x11  1      OPC=retq          
                                                                            
.size target, .-target
