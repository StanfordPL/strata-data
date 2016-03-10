  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode               
.target:                                #        0     0      OPC=<label>          
  movupd %xmm3, %xmm11                  #  1     0     5      OPC=movupd_xmm_xmm   
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x5   5      OPC=callq_label      
  vmovapd %xmm13, %xmm10                #  3     0xa   5      OPC=vmovapd_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xf   5      OPC=callq_label      
  retq                                  #  5     0x14  1      OPC=retq             
                                                                                   
.size target, .-target
