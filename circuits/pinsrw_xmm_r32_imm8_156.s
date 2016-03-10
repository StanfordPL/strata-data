  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode             
.target:                          #        0    0      OPC=<label>        
  callq .move_128_064_xmm1_r8_r9  #  1     0    5      OPC=callq_label    
  xchgw %bx, %r9w                 #  2     0x5  4      OPC=xchgw_r16_r16  
  callq .move_064_128_r8_r9_xmm1  #  3     0x9  5      OPC=callq_label    
  retq                            #  4     0xe  1      OPC=retq           
                                                                          
.size target, .-target
