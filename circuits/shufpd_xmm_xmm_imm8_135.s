  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vfmadd231sd %xmm1, %xmm1, %xmm2  #  1     0    5      OPC=vfmadd231sd_xmm_xmm_xmm  
  unpckhpd %xmm2, %xmm1            #  2     0x5  4      OPC=unpckhpd_xmm_xmm         
  retq                             #  3     0x9  1      OPC=retq                     
                                                                                     
.size target, .-target
