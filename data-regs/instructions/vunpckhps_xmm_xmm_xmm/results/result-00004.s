  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  callq .move_64_128_xmm10_xmm11_xmm2             #  2     0x5   5      OPC=callq_label        
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label        
  callq .move_128_64_xmm3_xmm8_xmm9               #  4     0xf   5      OPC=callq_label        
  vmovshdup %xmm9, %xmm11                         #  5     0x14  5      OPC=vmovshdup_xmm_xmm  
  vmovaps %xmm2, %xmm1                            #  6     0x19  4      OPC=vmovaps_xmm_xmm    
  vmovupd %ymm1, %ymm8                            #  7     0x1d  4      OPC=vmovupd_ymm_ymm    
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x21  5      OPC=callq_label        
  retq                                            #  9     0x26  1      OPC=retq               
                                                                                               
.size target, .-target
