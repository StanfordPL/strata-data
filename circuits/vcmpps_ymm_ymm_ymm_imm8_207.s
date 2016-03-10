  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  vzeroall                             #  1     0     3      OPC=vzeroall              
  vdivps %ymm2, %ymm4, %ymm4           #  2     0x3   4      OPC=vdivps_ymm_ymm_ymm    
  pmovsxdq %xmm4, %xmm4                #  3     0x7   5      OPC=pmovsxdq_xmm_xmm      
  pmovsxwd %xmm4, %xmm1                #  4     0xc   5      OPC=pmovsxwd_xmm_xmm      
  callq .move_128_64_xmm1_xmm12_xmm13  #  5     0x11  5      OPC=callq_label           
  vbroadcastsd %xmm13, %ymm1           #  6     0x16  5      OPC=vbroadcastsd_ymm_xmm  
  retq                                 #  7     0x1b  1      OPC=retq                  
                                                                                       
.size target, .-target
