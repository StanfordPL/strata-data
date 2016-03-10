  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vrcpss %xmm8, %xmm8, %xmm6                      #  2     0x5   5      OPC=vrcpss_xmm_xmm_xmm  
  movshdup %xmm6, %xmm3                           #  3     0xa   4      OPC=movshdup_xmm_xmm    
  vmovddup %xmm3, %xmm0                           #  4     0xe   4      OPC=vmovddup_xmm_xmm    
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2  #  5     0x12  5      OPC=callq_label         
  vpor %ymm2, %ymm0, %ymm1                        #  6     0x17  4      OPC=vpor_ymm_ymm_ymm    
  retq                                            #  7     0x1b  1      OPC=retq                
                                                                                                
.size target, .-target
