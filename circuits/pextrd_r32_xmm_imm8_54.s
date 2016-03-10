  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmaxpd %xmm1, %xmm1, %xmm7     #  1     0     4      OPC=vmaxpd_xmm_xmm_xmm     
  vcvtpd2dqx %xmm7, %xmm4        #  2     0x4   4      OPC=vcvtpd2dqx_xmm_xmm     
  vunpckhps %xmm4, %xmm7, %xmm3  #  3     0x8   4      OPC=vunpckhps_xmm_xmm_xmm  
  movq %xmm3, %rbx               #  4     0xc   5      OPC=movq_r64_xmm           
  retq                           #  5     0x11  1      OPC=retq                   
                                                                                  
.size target, .-target
