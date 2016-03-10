  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovd %ebx, %xmm13           #  1     0     4      OPC=vmovd_xmm_r32       
  vcvttpd2dq %ymm13, %xmm3     #  2     0x4   5      OPC=vcvttpd2dq_xmm_ymm  
  vcvtdq2pd %ymm13, %ymm14     #  3     0x9   5      OPC=vcvtdq2pd_ymm_ymm   
  vaddpd %ymm3, %ymm14, %ymm3  #  4     0xe   4      OPC=vaddpd_ymm_ymm_ymm  
  vmovsd %xmm3, %xmm2, %xmm1   #  5     0x12  4      OPC=vmovsd_xmm_xmm_xmm  
  retq                         #  6     0x16  1      OPC=retq                
                                                                             
.size target, .-target
