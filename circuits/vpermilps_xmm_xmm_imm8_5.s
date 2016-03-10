  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vpbroadcastd %xmm2, %xmm1      #  1     0     5      OPC=vpbroadcastd_xmm_xmm  
  vpbroadcastq %xmm1, %xmm4      #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm  
  vmovlhps %xmm4, %xmm2, %xmm12  #  3     0xa   4      OPC=vmovlhps_xmm_xmm_xmm  
  vmovshdup %xmm12, %xmm1        #  4     0xe   5      OPC=vmovshdup_xmm_xmm     
  retq                           #  5     0x13  1      OPC=retq                  
                                                                                 
.size target, .-target
