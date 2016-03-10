  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                      
.target:                              #        0     0      OPC=<label>                 
  vpunpckhdq %xmm2, %xmm2, %xmm1      #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_byte_14_of_ymm1_to_r8b  #  2     0x4   5      OPC=callq_label             
  movsd %xmm2, %xmm1                  #  3     0x9   4      OPC=movsd_xmm_xmm           
  callq .move_r8b_to_byte_8_of_ymm1   #  4     0xd   5      OPC=callq_label             
  callq .move_byte_15_of_ymm1_to_r8b  #  5     0x12  5      OPC=callq_label             
  callq .move_r8b_to_byte_9_of_ymm1   #  6     0x17  5      OPC=callq_label             
  retq                                #  7     0x1c  1      OPC=retq                    
                                                                                        
.size target, .-target
