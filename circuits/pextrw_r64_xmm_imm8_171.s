  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                      
.target:                              #        0     0      OPC=<label>                 
  movshdup %xmm1, %xmm5               #  1     0     4      OPC=movshdup_xmm_xmm        
  xorl %ebx, %ebx                     #  2     0x4   2      OPC=xorl_r32_r32            
  vpunpckldq %xmm5, %xmm1, %xmm1      #  3     0x6   4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_byte_15_of_ymm1_to_r9b  #  4     0xa   5      OPC=callq_label             
  callq .move_byte_14_of_ymm1_to_r8b  #  5     0xf   5      OPC=callq_label             
  callq .move_008_016_r8b_r9b_bx      #  6     0x14  5      OPC=callq_label             
  retq                                #  7     0x19  1      OPC=retq                    
                                                                                        
.size target, .-target
