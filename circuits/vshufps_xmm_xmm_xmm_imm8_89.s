  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm10, %xmm9, %xmm1                 #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vpbroadcastq %xmm3, %ymm6                       #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm    
  vmovshdup %xmm6, %xmm8                          #  4     0xf   4      OPC=vmovshdup_xmm_xmm       
  vunpcklpd %ymm8, %ymm1, %ymm1                   #  5     0x13  5      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                                            #  6     0x18  1      OPC=retq                    
                                                                                                    
.size target, .-target
