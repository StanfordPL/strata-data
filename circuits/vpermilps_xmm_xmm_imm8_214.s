  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  vmovss %xmm13, %xmm2, %xmm1          #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm  
  callq .move_256_128_ymm1_xmm8_xmm9   #  3     0xa   5      OPC=callq_label         
  unpcklps %xmm13, %xmm1               #  4     0xf   4      OPC=unpcklps_xmm_xmm    
  movsd %xmm8, %xmm1                   #  5     0x13  5      OPC=movsd_xmm_xmm       
  retq                                 #  6     0x18  1      OPC=retq                
                                                                                     
.size target, .-target