  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  movq %xmm2, %xmm8                             #  2     0x5   5      OPC=movq_xmm_xmm        
  vmovdqu %xmm2, %xmm9                          #  3     0xa   4      OPC=vmovdqu_xmm_xmm     
  callq .move_128_256_xmm8_xmm9_ymm3            #  4     0xe   5      OPC=callq_label         
  vminpd %ymm3, %ymm3, %ymm1                    #  5     0x13  4      OPC=vminpd_ymm_ymm_ymm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x17  5      OPC=callq_label         
  retq                                          #  7     0x1c  1      OPC=retq                
                                                                                              
.size target, .-target
