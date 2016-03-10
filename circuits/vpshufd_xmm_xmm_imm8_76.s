  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vmovdqa %xmm2, %xmm3               #  1     0     4      OPC=vmovdqa_xmm_xmm          
  callq .move_128_64_xmm3_xmm8_xmm9  #  2     0x4   5      OPC=callq_label              
  vmovss %xmm3, %xmm9, %xmm14        #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm       
  vpunpcklqdq %xmm3, %xmm14, %xmm1   #  4     0xd   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                               #  5     0x11  1      OPC=retq                     
                                                                                        
.size target, .-target
