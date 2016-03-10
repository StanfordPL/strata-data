  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  cvtdq2ps %xmm2, %xmm8             #  1     0     4      OPC=cvtdq2ps_xmm_xmm         
  vpunpcklqdq %xmm2, %xmm8, %xmm11  #  2     0x4   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  mulss %xmm8, %xmm11               #  3     0x8   5      OPC=mulss_xmm_xmm            
  vpunpckhqdq %xmm11, %xmm2, %xmm1  #  4     0xd   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                              #  5     0x12  1      OPC=retq                     
                                                                                       
.size target, .-target
