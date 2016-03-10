  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode                  
.target:                              #        0    0      OPC=<label>             
  divpd %xmm1, %xmm1                  #  1     0    4      OPC=divpd_xmm_xmm       
  callq .move_256_128_ymm1_xmm8_xmm9  #  2     0x4  5      OPC=callq_label         
  vminsd %xmm9, %xmm9, %xmm1          #  3     0x9  5      OPC=vminsd_xmm_xmm_xmm  
  retq                                #  4     0xe  1      OPC=retq                
                                                                                   
.size target, .-target
