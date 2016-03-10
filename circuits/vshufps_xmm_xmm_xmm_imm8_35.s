  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm4, %xmm7, %xmm1                 #  2     0x5   4      OPC=vunpcklps_xmm_xmm_xmm  
  movlhps %xmm3, %xmm1                          #  3     0x9   3      OPC=movlhps_xmm_xmm        
  vunpckhps %xmm1, %xmm3, %xmm2                 #  4     0xc   4      OPC=vunpckhps_xmm_xmm_xmm  
  punpcklqdq %xmm2, %xmm1                       #  5     0x10  4      OPC=punpcklqdq_xmm_xmm     
  retq                                          #  6     0x14  1      OPC=retq                   
                                                                                                 
.size target, .-target
