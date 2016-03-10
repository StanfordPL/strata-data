  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpmovsxdq %xmm11, %xmm13                        #  2     0x5   5      OPC=vpmovsxdq_xmm_xmm       
  vpunpckldq %xmm10, %xmm13, %xmm1                #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpcklps %xmm2, %xmm1, %xmm1                   #  4     0xf   4      OPC=vunpcklps_xmm_xmm_xmm   
  retq                                            #  5     0x13  1      OPC=retq                    
                                                                                                    
.size target, .-target
