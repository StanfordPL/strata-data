  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vbroadcastsd %xmm2, %ymm6             #  1     0     5      OPC=vbroadcastsd_ymm_xmm   
  vunpckhpd %ymm6, %ymm2, %ymm1         #  2     0x5   4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0x9   5      OPC=callq_label            
  punpcklqdq %xmm11, %xmm1              #  4     0xe   5      OPC=punpcklqdq_xmm_xmm     
  retq                                  #  5     0x13  1      OPC=retq                   
                                                                                         
.size target, .-target
