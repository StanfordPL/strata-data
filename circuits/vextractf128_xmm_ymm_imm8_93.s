  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm1_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  callq .move_256_128_ymm1_xmm8_xmm9    #  2     0x5   5      OPC=callq_label              
  vfmadd213pd %xmm11, %xmm10, %xmm1     #  3     0xa   5      OPC=vfmadd213pd_xmm_xmm_xmm  
  movapd %xmm9, %xmm1                   #  4     0xf   5      OPC=movapd_xmm_xmm           
  retq                                  #  5     0x14  1      OPC=retq                     
                                                                                           
.size target, .-target
