  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vpbroadcastq %xmm3, %xmm6   #  1     0     5      OPC=vpbroadcastq_xmm_xmm  
  vmovupd %xmm2, %xmm1        #  2     0x5   4      OPC=vmovupd_xmm_xmm       
  vsubps %ymm6, %ymm1, %ymm4  #  3     0x9   4      OPC=vsubps_ymm_ymm_ymm    
  movss %xmm4, %xmm1          #  4     0xd   4      OPC=movss_xmm_xmm         
  retq                        #  5     0x11  1      OPC=retq                  
                                                                              
.size target, .-target
