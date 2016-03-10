  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vdivsd %xmm3, %xmm2, %xmm11  #  1     0    4      OPC=vdivsd_xmm_xmm_xmm  
  movupd %xmm11, %xmm2         #  2     0x4  5      OPC=movupd_xmm_xmm      
  vpandn %ymm2, %ymm11, %ymm1  #  3     0x9  4      OPC=vpandn_ymm_ymm_ymm  
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
