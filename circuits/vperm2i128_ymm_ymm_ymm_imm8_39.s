  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode               
.target:                                #        0     0      OPC=<label>          
  callq .move_256_128_ymm3_xmm12_xmm13  #  1     0     5      OPC=callq_label      
  movaps %xmm13, %xmm10                 #  2     0x5   4      OPC=movaps_xmm_xmm   
  vmovupd %xmm3, %xmm11                 #  3     0x9   4      OPC=vmovupd_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xd   5      OPC=callq_label      
  retq                                  #  5     0x12  1      OPC=retq             
                                                                                   
.size target, .-target
