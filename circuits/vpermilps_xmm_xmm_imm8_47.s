  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpbroadcastd %xmm7, %xmm1                     #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm    
  vpunpckldq %xmm4, %xmm6, %xmm7                #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovaps %xmm1, %xmm4                          #  4     0xe   4      OPC=vmovaps_xmm_xmm         
  vmovlhps %xmm7, %xmm4, %xmm1                  #  5     0x12  4      OPC=vmovlhps_xmm_xmm_xmm    
  retq                                          #  6     0x16  1      OPC=retq                    
                                                                                                  
.size target, .-target
