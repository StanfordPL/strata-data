  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label        
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm2    #  3     0xa   5      OPC=callq_label        
  vpand %ymm2, %ymm2, %ymm1                       #  4     0xf   4      OPC=vpand_ymm_ymm_ymm  
  movhlps %xmm4, %xmm10                           #  5     0x13  4      OPC=movhlps_xmm_xmm    
  cvttpd2dq %xmm10, %xmm1                         #  6     0x17  5      OPC=cvttpd2dq_xmm_xmm  
  retq                                            #  7     0x1c  1      OPC=retq               
                                                                                               
.size target, .-target
