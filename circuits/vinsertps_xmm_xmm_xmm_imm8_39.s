  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label             
  vpunpckhdq %xmm2, %xmm4, %xmm15                 #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vaddsubpd %xmm8, %xmm6, %xmm1                   #  4     0xe   5      OPC=vaddsubpd_xmm_xmm_xmm   
  unpckhps %xmm15, %xmm1                          #  5     0x13  4      OPC=unpckhps_xmm_xmm        
  retq                                            #  6     0x17  1      OPC=retq                    
                                                                                                    
.size target, .-target
