  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vmovshdup %xmm3, %xmm1             #  1     0     4      OPC=vmovshdup_xmm_xmm        
  vunpckhps %xmm1, %xmm2, %xmm13     #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpcklqdq %xmm13, %xmm2, %xmm12  #  3     0x8   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovlhps %xmm13, %xmm12, %xmm1     #  4     0xd   5      OPC=vmovlhps_xmm_xmm_xmm     
  retq                               #  5     0x12  1      OPC=retq                     
                                                                                        
.size target, .-target
