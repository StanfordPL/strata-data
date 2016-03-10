  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  vbroadcastsd %xmm3, %ymm12         #  1     0     5      OPC=vbroadcastsd_ymm_xmm   
  callq .move_128_64_xmm3_xmm8_xmm9  #  2     0x5   5      OPC=callq_label            
  vbroadcastsd %xmm9, %ymm1          #  3     0xa   5      OPC=vbroadcastsd_ymm_xmm   
  vunpcklpd %ymm1, %ymm12, %ymm1     #  4     0xf   4      OPC=vunpcklpd_ymm_ymm_ymm  
  movups %xmm2, %xmm1                #  5     0x13  3      OPC=movups_xmm_xmm         
  retq                               #  6     0x16  1      OPC=retq                   
                                                                                      
.size target, .-target
