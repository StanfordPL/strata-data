  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode                  
.target:                              #        0    0      OPC=<label>             
  vminps %ymm2, %ymm2, %ymm8          #  1     0    4      OPC=vminps_ymm_ymm_ymm  
  movupd %xmm3, %xmm9                 #  2     0x4  5      OPC=movupd_xmm_xmm      
  callq .move_128_256_xmm8_xmm9_ymm1  #  3     0x9  5      OPC=callq_label         
  retq                                #  4     0xe  1      OPC=retq                
                                                                                   
.size target, .-target
