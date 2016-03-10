  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovshdup %ymm3, %ymm11                         #  2     0x5   4      OPC=vmovshdup_ymm_ymm       
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3  #  3     0x9   5      OPC=callq_label             
  vpunpckhdq %ymm11, %ymm2, %ymm1                 #  4     0xe   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklpd %ymm1, %ymm3, %ymm1                   #  5     0x13  4      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                                            #  6     0x17  1      OPC=retq                    
                                                                                                    
.size target, .-target
