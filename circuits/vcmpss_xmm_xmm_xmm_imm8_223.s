  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label         
  callq .move_128_064_xmm2_r8_r9     #  2     0x5   5      OPC=callq_label         
  notl %r8d                          #  3     0xa   3      OPC=notl_r32            
  callq .move_064_128_r8_r9_xmm2     #  4     0xd   5      OPC=callq_label         
  vxorps %xmm8, %xmm2, %xmm1         #  5     0x12  5      OPC=vxorps_xmm_xmm_xmm  
  retq                               #  6     0x17  1      OPC=retq                
                                                                                   
.size target, .-target
