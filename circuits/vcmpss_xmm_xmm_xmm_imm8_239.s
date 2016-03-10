  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  callq .move_128_064_xmm2_r12_r13   #  1     0     5      OPC=callq_label               
  vzeroall                           #  2     0x5   3      OPC=vzeroall                  
  vmulpd %xmm7, %xmm6, %xmm1         #  3     0x8   4      OPC=vmulpd_xmm_xmm_xmm        
  vfnmsub213pd %xmm6, %xmm11, %xmm7  #  4     0xc   5      OPC=vfnmsub213pd_xmm_xmm_xmm  
  pmovsxdq %xmm7, %xmm6              #  5     0x11  5      OPC=pmovsxdq_xmm_xmm          
  callq .move_064_128_r12_r13_xmm1   #  6     0x16  5      OPC=callq_label               
  vpunpckhdq %ymm4, %ymm6, %ymm6     #  7     0x1b  4      OPC=vpunpckhdq_ymm_ymm_ymm    
  vpunpckhdq %ymm13, %ymm6, %ymm14   #  8     0x1f  5      OPC=vpunpckhdq_ymm_ymm_ymm    
  orps %xmm14, %xmm1                 #  9     0x24  4      OPC=orps_xmm_xmm              
  retq                               #  10    0x28  1      OPC=retq                      
                                                                                         
.size target, .-target
