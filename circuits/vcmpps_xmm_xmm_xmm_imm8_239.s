  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vzeroall                     #  1     0     3      OPC=vzeroall            
  vdivps %ymm8, %ymm15, %ymm0  #  2     0x3   5      OPC=vdivps_ymm_ymm_ymm  
  vpmovsxdq %xmm0, %xmm13      #  3     0x8   5      OPC=vpmovsxdq_xmm_xmm   
  movshdup %xmm13, %xmm14      #  4     0xd   5      OPC=movshdup_xmm_xmm    
  vpmovsxdq %xmm14, %xmm1      #  5     0x12  5      OPC=vpmovsxdq_xmm_xmm   
  retq                         #  6     0x17  1      OPC=retq                
                                                                             
.size target, .-target
