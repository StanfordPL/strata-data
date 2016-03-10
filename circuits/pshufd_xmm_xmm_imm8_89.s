  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpbroadcastq %xmm9, %ymm12                      #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm    
  vpunpckhdq %xmm2, %xmm12, %xmm10                #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovsldup %ymm12, %ymm11                        #  4     0xe   5      OPC=vmovsldup_ymm_ymm       
  callq .move_64_128_xmm10_xmm11_xmm1             #  5     0x13  5      OPC=callq_label             
  retq                                            #  6     0x18  1      OPC=retq                    
                                                                                                    
.size target, .-target
