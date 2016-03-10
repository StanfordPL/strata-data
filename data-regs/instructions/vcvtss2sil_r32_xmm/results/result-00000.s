  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vcvtps2pd %xmm1, %xmm11  #  1     0    4      OPC=vcvtps2pd_xmm_xmm  
  vcvtpd2dq %ymm11, %xmm3  #  2     0x4  5      OPC=vcvtpd2dq_xmm_ymm  
  movd %xmm3, %ebx         #  3     0x9  4      OPC=movd_r32_xmm       
  retq                     #  4     0xd  1      OPC=retq               
                                                                       
.size target, .-target
