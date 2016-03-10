  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  vzeroall                     #  1     0     3      OPC=vzeroall              
  vdivps %xmm6, %xmm1, %xmm12  #  2     0x3   4      OPC=vdivps_xmm_xmm_xmm    
  pmovsxdq %xmm12, %xmm8       #  3     0x7   6      OPC=pmovsxdq_xmm_xmm      
  vmovshdup %ymm8, %ymm12      #  4     0xd   5      OPC=vmovshdup_ymm_ymm     
  vbroadcastsd %xmm12, %ymm1   #  5     0x12  5      OPC=vbroadcastsd_ymm_xmm  
  retq                         #  6     0x17  1      OPC=retq                  
                                                                               
.size target, .-target
