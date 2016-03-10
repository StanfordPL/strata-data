  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vbroadcastsd %xmm2, %ymm8             #  1     0     5      OPC=vbroadcastsd_ymm_xmm   
  vunpcklpd %ymm2, %ymm8, %ymm1         #  2     0x5   4      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0x9   5      OPC=callq_label            
  movaps %xmm11, %xmm1                  #  4     0xe   4      OPC=movaps_xmm_xmm         
  retq                                  #  5     0x12  1      OPC=retq                   
                                                                                         
.size target, .-target
