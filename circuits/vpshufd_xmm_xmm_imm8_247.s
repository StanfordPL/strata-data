  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r8_r9   #  1     0     5      OPC=callq_label            
  vzeroall                         #  2     0x5   3      OPC=vzeroall               
  callq .move_064_128_r8_r9_xmm3   #  3     0x8   5      OPC=callq_label            
  vmovshdup %ymm3, %ymm12          #  4     0xd   4      OPC=vmovshdup_ymm_ymm      
  vunpckhps %ymm12, %ymm12, %ymm1  #  5     0x11  5      OPC=vunpckhps_ymm_ymm_ymm  
  vmovss %xmm1, %xmm12, %xmm1      #  6     0x16  4      OPC=vmovss_xmm_xmm_xmm     
  retq                             #  7     0x1a  1      OPC=retq                   
                                                                                    
.size target, .-target
