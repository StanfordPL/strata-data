  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  vpbroadcastq %xmm3, %xmm9                     #  1     0     5      OPC=vpbroadcastq_xmm_xmm    
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label             
  vpunpckldq %xmm6, %xmm5, %xmm1                #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpckhps %xmm3, %xmm9, %xmm6                 #  4     0xe   4      OPC=vunpckhps_xmm_xmm_xmm   
  vmovlhps %xmm6, %xmm1, %xmm1                  #  5     0x12  4      OPC=vmovlhps_xmm_xmm_xmm    
  retq                                          #  6     0x16  1      OPC=retq                    
                                                                                                  
.size target, .-target
