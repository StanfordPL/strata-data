  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_byte_4_of_ymm1_to_r8b             #  1     0     5      OPC=callq_label             
  vmovd %ebx, %xmm11                            #  2     0x5   4      OPC=vmovd_xmm_r32           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0x9   5      OPC=callq_label             
  vpunpckldq %xmm11, %xmm6, %xmm9               #  4     0xe   5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_r8b_to_byte_14_of_ymm1            #  5     0x13  5      OPC=callq_label             
  movlhps %xmm9, %xmm1                          #  6     0x18  4      OPC=movlhps_xmm_xmm         
  retq                                          #  7     0x1c  1      OPC=retq                    
                                                                                                  
.size target, .-target
