  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vpunpcklqdq %xmm2, %xmm2, %xmm11   #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vpunpckhqdq %xmm11, %xmm2, %xmm10  #  2     0x4   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  punpckldq %xmm10, %xmm11           #  3     0x9   5      OPC=punpckldq_xmm_xmm        
  vpunpcklqdq %xmm2, %xmm11, %xmm0   #  4     0xe   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  movapd %xmm0, %xmm1                #  5     0x12  4      OPC=movapd_xmm_xmm           
  retq                               #  6     0x16  1      OPC=retq                     
                                                                                        
.size target, .-target
