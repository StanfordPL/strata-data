  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vmovhlps %xmm3, %xmm2, %xmm14        #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm     
  callq .move_128_64_xmm3_xmm12_xmm13  #  2     0x4   5      OPC=callq_label              
  movss %xmm12, %xmm2                  #  3     0x9   5      OPC=movss_xmm_xmm            
  vpunpcklqdq %xmm14, %xmm2, %xmm1     #  4     0xe   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                 #  5     0x13  1      OPC=retq                     
                                                                                          
.size target, .-target
