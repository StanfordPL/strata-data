  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  punpckldq %xmm13, %xmm2              #  2     0x5   5      OPC=punpckldq_xmm_xmm     
  callq .move_128_64_xmm3_xmm10_xmm11  #  3     0xa   5      OPC=callq_label           
  vpbroadcastd %xmm10, %ymm14          #  4     0xf   5      OPC=vpbroadcastd_ymm_xmm  
  punpckhdq %xmm14, %xmm3              #  5     0x14  5      OPC=punpckhdq_xmm_xmm     
  vmovsd %xmm2, %xmm3, %xmm1           #  6     0x19  4      OPC=vmovsd_xmm_xmm_xmm    
  retq                                 #  7     0x1d  1      OPC=retq                  
                                                                                       
.size target, .-target
