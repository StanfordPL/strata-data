  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  movaps %xmm3, %xmm9                             #  2     0x5   4      OPC=movaps_xmm_xmm      
  vmaxpd %xmm8, %xmm8, %xmm1                      #  3     0x9   5      OPC=vmaxpd_xmm_xmm_xmm  
  vpor %ymm2, %ymm1, %ymm8                        #  4     0xe   4      OPC=vpor_ymm_ymm_ymm    
  callq .move_128_256_xmm8_xmm9_ymm1              #  5     0x12  5      OPC=callq_label         
  retq                                            #  6     0x17  1      OPC=retq                
                                                                                                
.size target, .-target
