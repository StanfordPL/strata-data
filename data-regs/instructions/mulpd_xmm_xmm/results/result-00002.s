  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovups %xmm2, %xmm11        #  1     0     4      OPC=vmovups_xmm_xmm     
  vminps %xmm1, %xmm1, %xmm14  #  2     0x4   4      OPC=vminps_xmm_xmm_xmm  
  vminps %xmm1, %xmm14, %xmm9  #  3     0x8   4      OPC=vminps_xmm_xmm_xmm  
  vmulpd %ymm11, %ymm9, %ymm6  #  4     0xc   5      OPC=vmulpd_ymm_ymm_ymm  
  movdqa %xmm6, %xmm1          #  5     0x11  4      OPC=movdqa_xmm_xmm      
  retq                         #  6     0x15  1      OPC=retq                
                                                                             
.size target, .-target
