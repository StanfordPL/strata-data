  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vdivsd %xmm2, %xmm1, %xmm0     #  1     0     4      OPC=vdivsd_xmm_xmm_xmm     
  vunpcklpd %xmm2, %xmm0, %xmm7  #  2     0x4   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmulsd %xmm0, %xmm7, %xmm8     #  3     0x8   4      OPC=vmulsd_xmm_xmm_xmm     
  unpckhpd %xmm8, %xmm1          #  4     0xc   5      OPC=unpckhpd_xmm_xmm       
  retq                           #  5     0x11  1      OPC=retq                   
                                                                                  
.size target, .-target
