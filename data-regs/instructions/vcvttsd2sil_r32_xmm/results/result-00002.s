  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vmovdqa %xmm1, %xmm6               #  1     0     4      OPC=vmovdqa_xmm_xmm           
  vcvttpd2dq %ymm6, %xmm12           #  2     0x4   4      OPC=vcvttpd2dq_xmm_ymm        
  vpmovzxdq %xmm12, %xmm13           #  3     0x8   5      OPC=vpmovzxdq_xmm_xmm         
  vpbroadcastq %xmm13, %ymm4         #  4     0xd   5      OPC=vpbroadcastq_ymm_xmm      
  vcvtpd2dq %ymm4, %xmm1             #  5     0x12  4      OPC=vcvtpd2dq_xmm_ymm         
  vfnmadd132pd %ymm12, %ymm4, %ymm1  #  6     0x16  5      OPC=vfnmadd132pd_ymm_ymm_ymm  
  movd %xmm1, %ebx                   #  7     0x1b  4      OPC=movd_r32_xmm              
  retq                               #  8     0x1f  1      OPC=retq                      
                                                                                         
.size target, .-target
