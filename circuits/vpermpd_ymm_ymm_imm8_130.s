  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vpbroadcastq %xmm2, %ymm1             #  1     0     5      OPC=vpbroadcastq_ymm_xmm   
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  movups %xmm11, %xmm1                  #  3     0xa   4      OPC=movups_xmm_xmm         
  vunpcklpd %ymm2, %ymm1, %ymm1         #  4     0xe   4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                                  #  5     0x12  1      OPC=retq                   
                                                                                         
.size target, .-target
