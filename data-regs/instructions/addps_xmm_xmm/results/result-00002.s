  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vaddps %xmm2, %xmm1, %xmm7         #  1     0     4      OPC=vaddps_xmm_xmm_xmm       
  vmovhlps %xmm7, %xmm7, %xmm9       #  2     0x4   4      OPC=vmovhlps_xmm_xmm_xmm     
  vpunpcklqdq %xmm7, %xmm7, %xmm8    #  3     0x8   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  4     0xc   5      OPC=callq_label              
  retq                               #  5     0x11  1      OPC=retq                     
                                                                                        
.size target, .-target
