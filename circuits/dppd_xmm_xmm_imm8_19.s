  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vmaxps %xmm1, %xmm1, %xmm8    #  1     0     4      OPC=vmaxps_xmm_xmm_xmm  
  movddup %xmm2, %xmm7          #  2     0x4   4      OPC=movddup_xmm_xmm     
  vmulsd %xmm7, %xmm8, %xmm14   #  3     0x8   4      OPC=vmulsd_xmm_xmm_xmm  
  vxorps %xmm1, %xmm1, %xmm10   #  4     0xc   4      OPC=vxorps_xmm_xmm_xmm  
  vaddpd %xmm14, %xmm10, %xmm7  #  5     0x10  5      OPC=vaddpd_xmm_xmm_xmm  
  movddup %xmm7, %xmm1          #  6     0x15  4      OPC=movddup_xmm_xmm     
  retq                          #  7     0x19  1      OPC=retq                
                                                                              
.size target, .-target
