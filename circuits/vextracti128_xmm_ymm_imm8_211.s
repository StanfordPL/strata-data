  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vminps %ymm1, %ymm1, %ymm2          #  1     0     4      OPC=vminps_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm8_xmm9  #  2     0x4   5      OPC=callq_label         
  movupd %xmm9, %xmm13                #  3     0x9   5      OPC=movupd_xmm_xmm      
  vorpd %xmm13, %xmm13, %xmm1         #  4     0xe   5      OPC=vorpd_xmm_xmm_xmm   
  retq                                #  5     0x13  1      OPC=retq                
                                                                                    
.size target, .-target
