  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode               
.target:                                #        0    0      OPC=<label>          
  callq .move_256_128_ymm1_xmm10_xmm11  #  1     0    5      OPC=callq_label      
  vmovapd %xmm11, %xmm7                 #  2     0x5  5      OPC=vmovapd_xmm_xmm  
  vmovups %xmm7, %xmm1                  #  3     0xa  4      OPC=vmovups_xmm_xmm  
  retq                                  #  4     0xe  1      OPC=retq             
                                                                                  
.size target, .-target
