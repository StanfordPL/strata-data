  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode                  
.target:                              #        0    0      OPC=<label>             
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0    5      OPC=callq_label         
  vmaxpd %ymm3, %ymm3, %ymm1          #  2     0x5  4      OPC=vmaxpd_ymm_ymm_ymm  
  movupd %xmm9, %xmm1                 #  3     0x9  5      OPC=movupd_xmm_xmm      
  retq                                #  4     0xe  1      OPC=retq                
                                                                                   
.size target, .-target
