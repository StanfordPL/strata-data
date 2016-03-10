  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  vmovddup %xmm3, %xmm6              #  1     0     4      OPC=vmovddup_xmm_xmm      
  vmovups %xmm6, %xmm12              #  2     0x4   4      OPC=vmovups_xmm_xmm       
  callq .move_128_64_xmm2_xmm8_xmm9  #  3     0x8   5      OPC=callq_label           
  vmovlhps %xmm12, %xmm9, %xmm1      #  4     0xd   5      OPC=vmovlhps_xmm_xmm_xmm  
  retq                               #  5     0x12  1      OPC=retq                  
                                                                                     
.size target, .-target
