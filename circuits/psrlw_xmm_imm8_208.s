  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vxorps %xmm1, %xmm1, %xmm3         #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  vpmovzxdq %xmm3, %xmm8             #  2     0x4   5      OPC=vpmovzxdq_xmm_xmm   
  vpand %xmm8, %xmm3, %xmm9          #  3     0x9   5      OPC=vpand_xmm_xmm_xmm   
  callq .move_64_128_xmm8_xmm9_xmm1  #  4     0xe   5      OPC=callq_label         
  retq                               #  5     0x13  1      OPC=retq                
                                                                                   
.size target, .-target
