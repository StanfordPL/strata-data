  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  vmovsldup %xmm3, %xmm12            #  1     0     4      OPC=vmovsldup_xmm_xmm      
  callq .move_128_64_xmm2_xmm8_xmm9  #  2     0x4   5      OPC=callq_label            
  vunpcklps %xmm8, %xmm9, %xmm1      #  3     0x9   5      OPC=vunpcklps_xmm_xmm_xmm  
  movhlps %xmm12, %xmm8              #  4     0xe   4      OPC=movhlps_xmm_xmm        
  punpckldq %xmm8, %xmm12            #  5     0x12  5      OPC=punpckldq_xmm_xmm      
  movlhps %xmm12, %xmm1              #  6     0x17  4      OPC=movlhps_xmm_xmm        
  retq                               #  7     0x1b  1      OPC=retq                   
                                                                                      
.size target, .-target
