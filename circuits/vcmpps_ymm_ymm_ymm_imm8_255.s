  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  vzeroall                     #  1     0     3      OPC=vzeroall              
  vdivps %xmm13, %xmm4, %xmm7  #  2     0x3   5      OPC=vdivps_xmm_xmm_xmm    
  vpmovsxdq %xmm7, %xmm0       #  3     0x8   5      OPC=vpmovsxdq_xmm_xmm     
  movshdup %xmm0, %xmm7        #  4     0xd   4      OPC=movshdup_xmm_xmm      
  vbroadcastss %xmm7, %ymm1    #  5     0x11  5      OPC=vbroadcastss_ymm_xmm  
  retq                         #  6     0x16  1      OPC=retq                  
                                                                               
.size target, .-target
