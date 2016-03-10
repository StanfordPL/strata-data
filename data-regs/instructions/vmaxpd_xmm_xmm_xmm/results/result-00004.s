  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmovapd %xmm3, %xmm12        #  1     0    4      OPC=vmovapd_xmm_xmm     
  vmaxsd %xmm2, %xmm2, %xmm9   #  2     0x4  4      OPC=vmaxsd_xmm_xmm_xmm  
  vmaxpd %ymm12, %ymm9, %ymm1  #  3     0x8  5      OPC=vmaxpd_ymm_ymm_ymm  
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
