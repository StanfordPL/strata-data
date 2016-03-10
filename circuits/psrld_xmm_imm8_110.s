  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                          
.target:                               #        0     0      OPC=<label>                     
  cvtps2pd %xmm1, %xmm3                #  1     0     3      OPC=cvtps2pd_xmm_xmm            
  movsd %xmm1, %xmm1                   #  2     0x3   4      OPC=movsd_xmm_xmm               
  vcvtpd2dqx %xmm3, %xmm3              #  3     0x7   4      OPC=vcvtpd2dqx_xmm_xmm          
  vmovupd %xmm1, %xmm11                #  4     0xb   4      OPC=vmovupd_xmm_xmm             
  vfmsubadd231ps %xmm3, %xmm11, %xmm3  #  5     0xf   5      OPC=vfmsubadd231ps_xmm_xmm_xmm  
  vpandn %ymm3, %ymm3, %ymm3           #  6     0x14  4      OPC=vpandn_ymm_ymm_ymm          
  movddup %xmm3, %xmm1                 #  7     0x18  4      OPC=movddup_xmm_xmm             
  retq                                 #  8     0x1c  1      OPC=retq                        
                                                                                             
.size target, .-target
