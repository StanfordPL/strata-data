  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmovups %xmm2, %xmm0                 #  2     0x5   4      OPC=vmovups_xmm_xmm          
  vunpcklps %xmm11, %xmm2, %xmm5       #  3     0x9   5      OPC=vunpcklps_xmm_xmm_xmm    
  vpunpckhqdq %xmm5, %xmm0, %xmm1      #  4     0xe   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                 #  5     0x12  1      OPC=retq                     
                                                                                          
.size target, .-target
