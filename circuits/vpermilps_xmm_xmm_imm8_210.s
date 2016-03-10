  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  callq .move_128_64_xmm2_xmm12_xmm13           #  2     0x5   5      OPC=callq_label             
  vunpcklps %xmm4, %xmm13, %xmm3                #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckldq %xmm13, %xmm2, %xmm0               #  4     0xe   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovsd %xmm3, %xmm0, %xmm1                    #  5     0x13  4      OPC=vmovsd_xmm_xmm_xmm      
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
