  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  unpcklps %xmm7, %xmm4                         #  2     0x5   3      OPC=unpcklps_xmm_xmm        
  vpbroadcastq %xmm2, %ymm7                     #  3     0x8   5      OPC=vpbroadcastq_ymm_xmm    
  unpckhps %xmm7, %xmm2                         #  4     0xd   3      OPC=unpckhps_xmm_xmm        
  vmovlhps %xmm4, %xmm6, %xmm3                  #  5     0x10  4      OPC=vmovlhps_xmm_xmm_xmm    
  vpunpckhdq %xmm2, %xmm3, %xmm1                #  6     0x14  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  retq                                          #  7     0x18  1      OPC=retq                    
                                                                                                  
.size target, .-target
