  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode                  
.target:                              #        0    0      OPC=<label>             
  callq .move_256_128_ymm1_xmm8_xmm9  #  1     0    5      OPC=callq_label         
  movupd %xmm8, %xmm5                 #  2     0x5  5      OPC=movupd_xmm_xmm      
  vminss %xmm8, %xmm5, %xmm1          #  3     0xa  5      OPC=vminss_xmm_xmm_xmm  
  retq                                #  4     0xf  1      OPC=retq                
                                                                                   
.size target, .-target
