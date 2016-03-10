  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode                       
.target:                             #        0    0      OPC=<label>                  
  vcvtpd2dqx %xmm2, %xmm10           #  1     0    4      OPC=vcvtpd2dqx_xmm_xmm       
  vpunpcklqdq %xmm2, %xmm10, %xmm12  #  2     0x4  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  unpckhpd %xmm12, %xmm1             #  3     0x8  5      OPC=unpckhpd_xmm_xmm         
  retq                               #  4     0xd  1      OPC=retq                     
                                                                                       
.size target, .-target
