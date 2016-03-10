  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  vpbroadcastd %xmm2, %ymm3                     #  1     0     5      OPC=vpbroadcastd_ymm_xmm    
  vpunpckhdq %xmm2, %xmm3, %xmm1                #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0x9   5      OPC=callq_label             
  movss %xmm7, %xmm1                            #  4     0xe   4      OPC=movss_xmm_xmm           
  retq                                          #  5     0x12  1      OPC=retq                    
                                                                                                  
.size target, .-target
