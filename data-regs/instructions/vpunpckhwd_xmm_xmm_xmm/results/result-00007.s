  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpor %xmm8, %xmm2, %xmm0                        #  2     0x5   5      OPC=vpor_xmm_xmm_xmm        
  vpaddd %xmm3, %xmm11, %xmm15                    #  3     0xa   4      OPC=vpaddd_xmm_xmm_xmm      
  vpunpckhwd %ymm15, %ymm0, %ymm1                 #  4     0xe   5      OPC=vpunpckhwd_ymm_ymm_ymm  
  retq                                            #  5     0x13  1      OPC=retq                    
                                                                                                    
.size target, .-target
