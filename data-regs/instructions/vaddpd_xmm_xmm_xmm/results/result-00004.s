  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovdqu %xmm3, %xmm1         #  1     0     4      OPC=vmovdqu_xmm_xmm     
  vmovapd %xmm2, %xmm10        #  2     0x4   4      OPC=vmovapd_xmm_xmm     
  vaddpd %ymm1, %ymm10, %ymm6  #  3     0x8   4      OPC=vaddpd_ymm_ymm_ymm  
  vminpd %ymm6, %ymm6, %ymm1   #  4     0xc   4      OPC=vminpd_ymm_ymm_ymm  
  retq                         #  5     0x10  1      OPC=retq                
                                                                             
.size target, .-target
