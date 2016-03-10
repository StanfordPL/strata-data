  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vzeroall                      #  1     0     3      OPC=vzeroall              
  vdivps %ymm12, %ymm14, %ymm1  #  2     0x3   5      OPC=vdivps_ymm_ymm_ymm    
  pmovsxdq %xmm1, %xmm1         #  3     0x8   5      OPC=pmovsxdq_xmm_xmm      
  movshdup %xmm1, %xmm1         #  4     0xd   4      OPC=movshdup_xmm_xmm      
  vpbroadcastq %xmm1, %ymm1     #  5     0x11  5      OPC=vpbroadcastq_ymm_xmm  
  retq                          #  6     0x16  1      OPC=retq                  
                                                                                
.size target, .-target
