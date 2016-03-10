  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  callq .move_128_64_xmm2_xmm12_xmm13           #  2     0x5   5      OPC=callq_label            
  vunpcklps %xmm2, %xmm5, %xmm1                 #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm  
  punpcklqdq %xmm12, %xmm1                      #  4     0xe   5      OPC=punpcklqdq_xmm_xmm     
  retq                                          #  5     0x13  1      OPC=retq                   
                                                                                                 
.size target, .-target
