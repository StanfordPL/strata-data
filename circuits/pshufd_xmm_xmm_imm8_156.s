  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  callq .move_64_128_xmm10_xmm11_xmm1  #  2     0x5   5      OPC=callq_label           
  vmovhlps %xmm2, %xmm11, %xmm3        #  3     0xa   4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm12_xmm13  #  4     0xe   5      OPC=callq_label           
  movshdup %xmm13, %xmm6               #  5     0x13  5      OPC=movshdup_xmm_xmm      
  punpckldq %xmm3, %xmm6               #  6     0x18  4      OPC=punpckldq_xmm_xmm     
  punpckldq %xmm6, %xmm1               #  7     0x1c  4      OPC=punpckldq_xmm_xmm     
  retq                                 #  8     0x20  1      OPC=retq                  
                                                                                       
.size target, .-target
