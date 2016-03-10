  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r8_r9   #  1     0     5      OPC=callq_label              
  vfmsub132sd %xmm2, %xmm3, %xmm1  #  2     0x5   5      OPC=vfmsub132sd_xmm_xmm_xmm  
  callq .move_064_128_r8_r9_xmm2   #  3     0xa   5      OPC=callq_label              
  orl %r9d, %r9d                   #  4     0xf   3      OPC=orl_r32_r32              
  callq .move_064_128_r8_r9_xmm1   #  5     0x12  5      OPC=callq_label              
  retq                             #  6     0x17  1      OPC=retq                     
                                                                                      
.size target, .-target
