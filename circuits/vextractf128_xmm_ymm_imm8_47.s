  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm1_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vminsd %xmm13, %xmm13, %xmm3          #  2     0x5   5      OPC=vminsd_xmm_xmm_xmm       
  callq .move_128_64_xmm3_xmm10_xmm11   #  3     0xa   5      OPC=callq_label              
  vfmsub231ps %xmm1, %xmm10, %xmm1      #  4     0xf   5      OPC=vfmsub231ps_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1   #  5     0x14  5      OPC=callq_label              
  retq                                  #  6     0x19  1      OPC=retq                     
                                                                                           
.size target, .-target
