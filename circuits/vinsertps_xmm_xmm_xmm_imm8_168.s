  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label          
  pmovzxdq %xmm10, %xmm6                          #  3     0xa   6      OPC=pmovzxdq_xmm_xmm     
  movddup %xmm10, %xmm9                           #  4     0x10  5      OPC=movddup_xmm_xmm      
  vpand %xmm7, %xmm9, %xmm1                       #  5     0x15  4      OPC=vpand_xmm_xmm_xmm    
  vandnps %ymm1, %ymm1, %ymm7                     #  6     0x19  4      OPC=vandnps_ymm_ymm_ymm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  7     0x1d  5      OPC=callq_label          
  retq                                            #  8     0x22  1      OPC=retq                 
                                                                                                 
.size target, .-target
