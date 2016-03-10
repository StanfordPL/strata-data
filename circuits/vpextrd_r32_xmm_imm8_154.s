  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                     
.target:                           #        0    0      OPC=<label>                
  vcvttpd2dq %xmm1, %xmm14         #  1     0    4      OPC=vcvttpd2dq_xmm_xmm     
  vunpckhpd %xmm14, %xmm1, %xmm14  #  2     0x4  5      OPC=vunpckhpd_xmm_xmm_xmm  
  movd %xmm14, %ebx                #  3     0x9  5      OPC=movd_r32_xmm           
  retq                             #  4     0xe  1      OPC=retq                   
                                                                                   
.size target, .-target
