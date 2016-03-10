  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  vpbroadcastd %xmm1, %xmm9                     #  1     0     5      OPC=vpbroadcastd_xmm_xmm    
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label             
  andnps %xmm9, %xmm4                           #  3     0xa   4      OPC=andnps_xmm_xmm          
  vpunpckhdq %xmm1, %xmm9, %xmm14               #  4     0xe   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x12  5      OPC=callq_label             
  unpcklps %xmm14, %xmm1                        #  6     0x17  4      OPC=unpcklps_xmm_xmm        
  retq                                          #  7     0x1b  1      OPC=retq                    
                                                                                                  
.size target, .-target
