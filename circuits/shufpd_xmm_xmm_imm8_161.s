  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vxorps %xmm13, %xmm13, %xmm3     #  1     0    5      OPC=vxorps_xmm_xmm_xmm       
  vpunpcklqdq %xmm2, %xmm3, %xmm2  #  2     0x5  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  unpckhpd %xmm2, %xmm1            #  3     0x9  4      OPC=unpckhpd_xmm_xmm         
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
