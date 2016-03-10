  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP   Bytes  Opcode                    
.target:                     #        0     0      OPC=<label>               
  vzeroall                   #  1     0     3      OPC=vzeroall              
  divps %xmm6, %xmm1         #  2     0x3   3      OPC=divps_xmm_xmm         
  vpmovsxdq %xmm1, %xmm5     #  3     0x6   5      OPC=vpmovsxdq_xmm_xmm     
  vbroadcastsd %xmm5, %ymm1  #  4     0xb   5      OPC=vbroadcastsd_ymm_xmm  
  vmovshdup %ymm1, %ymm1     #  5     0x10  4      OPC=vmovshdup_ymm_ymm     
  retq                       #  6     0x14  1      OPC=retq                  
                                                                             
.size target, .-target
