  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode            
.target:                          #        0     0      OPC=<label>       
  callq .move_016_008_bx_r8b_r9b  #  1     0     5      OPC=callq_label   
  callq .move_008_016_r8b_r9b_dx  #  2     0x5   5      OPC=callq_label   
  addw %bx, %dx                   #  3     0xa   3      OPC=addw_r16_r16  
  adcw %bx, %bx                   #  4     0xd   3      OPC=adcw_r16_r16  
  retq                            #  5     0x10  1      OPC=retq          
                                                                          
.size target, .-target
