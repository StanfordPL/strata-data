  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vmovss %xmm1, %xmm2, %xmm0  #  1     0     4      OPC=vmovss_xmm_xmm_xmm    
  vpbroadcastq %xmm0, %xmm2   #  2     0x4   5      OPC=vpbroadcastq_xmm_xmm  
  vpor %ymm2, %ymm0, %ymm12   #  3     0x9   4      OPC=vpor_ymm_ymm_ymm      
  minsd %xmm12, %xmm1         #  4     0xd   5      OPC=minsd_xmm_xmm         
  movsd %xmm0, %xmm1          #  5     0x12  4      OPC=movsd_xmm_xmm         
  retq                        #  6     0x16  1      OPC=retq                  
                                                                              
.size target, .-target
