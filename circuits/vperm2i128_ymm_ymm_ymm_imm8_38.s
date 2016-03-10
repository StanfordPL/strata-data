  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vminpd %ymm3, %ymm3, %ymm1          #  1     0     4      OPC=vminpd_ymm_ymm_ymm  
  vpand %xmm1, %xmm1, %xmm4           #  2     0x4   4      OPC=vpand_xmm_xmm_xmm   
  vpand %xmm3, %xmm4, %xmm9           #  3     0x8   4      OPC=vpand_xmm_xmm_xmm   
  vpor %ymm1, %ymm1, %ymm8            #  4     0xc   4      OPC=vpor_ymm_ymm_ymm    
  callq .move_128_256_xmm8_xmm9_ymm1  #  5     0x10  5      OPC=callq_label         
  retq                                #  6     0x15  1      OPC=retq                
                                                                                    
.size target, .-target
