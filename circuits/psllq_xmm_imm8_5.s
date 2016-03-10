  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                  
.target:                         #        0     0      OPC=<label>             
  vpaddq %xmm1, %xmm1, %xmm10    #  1     0     4      OPC=vpaddq_xmm_xmm_xmm  
  vpaddq %xmm10, %xmm10, %xmm7   #  2     0x4   5      OPC=vpaddq_xmm_xmm_xmm  
  paddq %xmm7, %xmm7             #  3     0x9   4      OPC=paddq_xmm_xmm       
  vpaddq %xmm7, %xmm7, %xmm10    #  4     0xd   4      OPC=vpaddq_xmm_xmm_xmm  
  vmaxpd %ymm10, %ymm10, %ymm11  #  5     0x11  5      OPC=vmaxpd_ymm_ymm_ymm  
  vpaddq %xmm10, %xmm11, %xmm7   #  6     0x16  5      OPC=vpaddq_xmm_xmm_xmm  
  movapd %xmm7, %xmm1            #  7     0x1b  4      OPC=movapd_xmm_xmm      
  retq                           #  8     0x1f  1      OPC=retq                
                                                                               
.size target, .-target
