  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vmulpd %xmm3, %xmm2, %xmm3         #  1     0     4      OPC=vmulpd_xmm_xmm_xmm        
  callq .move_128_064_xmm3_r10_r11   #  2     0x4   5      OPC=callq_label               
  vzeroall                           #  3     0x9   3      OPC=vzeroall                  
  callq .move_064_128_r10_r11_xmm3   #  4     0xc   5      OPC=callq_label               
  vfnmsub213pd %xmm9, %xmm13, %xmm1  #  5     0x11  5      OPC=vfnmsub213pd_xmm_xmm_xmm  
  vpunpckhqdq %ymm3, %ymm10, %ymm8   #  6     0x16  4      OPC=vpunpckhqdq_ymm_ymm_ymm   
  vfnmadd213pd %ymm8, %ymm4, %ymm1   #  7     0x1a  5      OPC=vfnmadd213pd_ymm_ymm_ymm  
  retq                               #  8     0x1f  1      OPC=retq                      
                                                                                         
.size target, .-target
