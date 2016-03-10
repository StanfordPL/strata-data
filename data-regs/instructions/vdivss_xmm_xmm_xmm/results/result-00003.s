  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vpmovzxdq %xmm2, %xmm11                         #  1     0     5      OPC=vpmovzxdq_xmm_xmm        
  divss %xmm3, %xmm2                              #  2     0x5   4      OPC=divss_xmm_xmm            
  vpunpcklqdq %xmm11, %xmm2, %xmm1                #  3     0x9   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  4     0xe   5      OPC=callq_label              
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label              
  retq                                            #  6     0x18  1      OPC=retq                     
                                                                                                     
.size target, .-target
