  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vorpd %xmm2, %xmm2, %xmm12         #  1     0     4      OPC=vorpd_xmm_xmm_xmm        
  movsldup %xmm2, %xmm1              #  2     0x4   4      OPC=movsldup_xmm_xmm         
  vpunpckhdq %xmm1, %xmm12, %xmm2    #  3     0x8   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  callq .move_128_64_xmm2_xmm8_xmm9  #  4     0xc   5      OPC=callq_label              
  vpunpcklqdq %xmm9, %xmm1, %xmm1    #  5     0x11  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                               #  6     0x16  1      OPC=retq                     
                                                                                        
.size target, .-target
