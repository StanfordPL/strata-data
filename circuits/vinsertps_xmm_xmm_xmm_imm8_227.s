  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vunpckhps %xmm9, %xmm9, %xmm1      #  2     0x5   5      OPC=vunpckhps_xmm_xmm_xmm  
  punpckhdq %xmm2, %xmm3             #  3     0xa   4      OPC=punpckhdq_xmm_xmm      
  punpckhqdq %xmm3, %xmm1            #  4     0xe   4      OPC=punpckhqdq_xmm_xmm     
  retq                               #  5     0x12  1      OPC=retq                   
                                                                                      
.size target, .-target
