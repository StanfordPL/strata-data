  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode               
.target:                                #        0     0      OPC=<label>          
  callq .move_128_064_xmm3_r12_r13      #  1     0     5      OPC=callq_label      
  callq .move_064_128_r12_r13_xmm1      #  2     0x5   5      OPC=callq_label      
  vmovups %xmm2, %xmm12                 #  3     0xa   4      OPC=vmovups_xmm_xmm  
  movupd %xmm1, %xmm13                  #  4     0xe   5      OPC=movupd_xmm_xmm   
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x13  5      OPC=callq_label      
  retq                                  #  6     0x18  1      OPC=retq             
                                                                                   
.size target, .-target
