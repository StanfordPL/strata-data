  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpbroadcastd %xmm3, %ymm12                    #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm    
  vunpcklps %xmm6, %xmm7, %xmm13                #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckhdq %xmm12, %xmm3, %xmm1               #  4     0xe   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movsd %xmm13, %xmm1                           #  5     0x13  5      OPC=movsd_xmm_xmm           
  retq                                          #  6     0x18  1      OPC=retq                    
                                                                                                  
.size target, .-target
