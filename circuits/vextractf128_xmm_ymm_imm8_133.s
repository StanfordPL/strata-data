  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_256_128_ymm1_xmm8_xmm9            #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label              
  vfmsub231sd %xmm6, %xmm6, %xmm1               #  3     0xa   5      OPC=vfmsub231sd_xmm_xmm_xmm  
  movups %xmm9, %xmm1                           #  4     0xf   4      OPC=movups_xmm_xmm           
  retq                                          #  5     0x13  1      OPC=retq                     
                                                                                                   
.size target, .-target
