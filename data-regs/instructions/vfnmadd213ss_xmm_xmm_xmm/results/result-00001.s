  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  pmovsxdq %xmm3, %xmm14           #  1     0     6      OPC=pmovsxdq_xmm_xmm         
  vcvttpd2dq %xmm14, %xmm0         #  2     0x6   5      OPC=vcvttpd2dq_xmm_xmm       
  subss %xmm2, %xmm0               #  3     0xb   4      OPC=subss_xmm_xmm            
  vfmadd213ss %xmm3, %xmm0, %xmm1  #  4     0xf   5      OPC=vfmadd213ss_xmm_xmm_xmm  
  retq                             #  5     0x14  1      OPC=retq                     
                                                                                      
.size target, .-target
