  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  movsldup %xmm7, %xmm15                        #  2     0x5   5      OPC=movsldup_xmm_xmm        
  vpunpckldq %xmm2, %xmm6, %xmm3                #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpcklps %xmm3, %xmm15, %xmm1                #  4     0xe   4      OPC=vunpcklps_xmm_xmm_xmm   
  retq                                          #  5     0x12  1      OPC=retq                    
                                                                                                  
.size target, .-target
