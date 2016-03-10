  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vcvtpd2dqx %xmm2, %xmm5        #  1     0     4      OPC=vcvtpd2dqx_xmm_xmm     
  movapd %xmm2, %xmm0            #  2     0x4   4      OPC=movapd_xmm_xmm         
  vunpcklpd %xmm0, %xmm0, %xmm9  #  3     0x8   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vdivss %xmm5, %xmm2, %xmm6     #  4     0xc   4      OPC=vdivss_xmm_xmm_xmm     
  vmovhlps %xmm6, %xmm9, %xmm1   #  5     0x10  4      OPC=vmovhlps_xmm_xmm_xmm   
  retq                           #  6     0x14  1      OPC=retq                   
                                                                                  
.size target, .-target
