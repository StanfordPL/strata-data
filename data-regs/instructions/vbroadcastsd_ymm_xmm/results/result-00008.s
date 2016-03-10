  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  vpbroadcastq %xmm2, %xmm1             #  1     0     5      OPC=vpbroadcastq_xmm_xmm  
  callq .move_128_64_xmm2_xmm10_xmm11   #  2     0x5   5      OPC=callq_label           
  vmovupd %xmm2, %xmm14                 #  3     0xa   4      OPC=vmovupd_xmm_xmm       
  unpcklpd %xmm14, %xmm10               #  4     0xe   5      OPC=unpcklpd_xmm_xmm      
  vmovlhps %xmm2, %xmm1, %xmm11         #  5     0x13  4      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  6     0x17  5      OPC=callq_label           
  retq                                  #  7     0x1c  1      OPC=retq                  
                                                                                        
.size target, .-target
