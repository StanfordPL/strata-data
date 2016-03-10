  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vunpckhps %xmm2, %xmm2, %xmm13                #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm    
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label              
  vpunpckldq %xmm6, %xmm2, %xmm4                #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm   
  vpunpcklqdq %xmm13, %xmm4, %xmm1              #  4     0xd   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                          #  5     0x12  1      OPC=retq                     
                                                                                                   
.size target, .-target
