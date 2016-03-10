  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r8_r9   #  1     0     5      OPC=callq_label             
  vzeroall                         #  2     0x5   3      OPC=vzeroall                
  callq .move_064_128_r8_r9_xmm3   #  3     0x8   5      OPC=callq_label             
  vunpcklps %xmm7, %xmm3, %xmm12   #  4     0xd   4      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckhdq %ymm3, %ymm12, %ymm1  #  5     0x11  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpbroadcastd %xmm3, %ymm14       #  6     0x15  5      OPC=vpbroadcastd_ymm_xmm    
  movlhps %xmm14, %xmm1            #  7     0x1a  4      OPC=movlhps_xmm_xmm         
  retq                             #  8     0x1e  1      OPC=retq                    
                                                                                     
.size target, .-target
