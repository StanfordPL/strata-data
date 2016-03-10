  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm12_xmm13           #  1     0     5      OPC=callq_label             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label             
  vpunpckldq %xmm2, %xmm2, %xmm1                #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vpxor %xmm5, %xmm12, %xmm13                   #  4     0xe   4      OPC=vpxor_xmm_xmm_xmm       
  vunpckhps %xmm2, %xmm1, %xmm11                #  5     0x12  4      OPC=vunpckhps_xmm_xmm_xmm   
  vpunpckhdq %xmm11, %xmm13, %xmm1              #  6     0x16  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  retq                                          #  7     0x1b  1      OPC=retq                    
                                                                                                  
.size target, .-target
