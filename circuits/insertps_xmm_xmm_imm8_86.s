  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vunpckhps %xmm1, %xmm10, %xmm12                 #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpckhqdq %xmm1, %xmm12, %xmm9                #  3     0x9   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  4     0xd   5      OPC=callq_label              
  retq                                            #  5     0x12  1      OPC=retq                     
                                                                                                     
.size target, .-target
