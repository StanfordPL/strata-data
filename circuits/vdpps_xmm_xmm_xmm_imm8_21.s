  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vmulss %xmm3, %xmm2, %xmm2         #  1     0     4      OPC=vmulss_xmm_xmm_xmm       
  callq .move_128_064_xmm2_r12_r13   #  2     0x4   5      OPC=callq_label              
  vzeroall                           #  3     0x9   3      OPC=vzeroall                 
  vmulss %xmm8, %xmm9, %xmm14        #  4     0xc   5      OPC=vmulss_xmm_xmm_xmm       
  movd %r12d, %xmm10                 #  5     0x11  5      OPC=movd_xmm_r32             
  movddup %xmm10, %xmm1              #  6     0x16  5      OPC=movddup_xmm_xmm          
  vfmadd231ps %xmm11, %xmm14, %xmm1  #  7     0x1b  5      OPC=vfmadd231ps_xmm_xmm_xmm  
  retq                               #  8     0x20  1      OPC=retq                     
                                                                                        
.size target, .-target
