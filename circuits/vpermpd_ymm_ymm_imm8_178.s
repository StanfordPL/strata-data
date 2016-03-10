  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %ymm2, %ymm2, %ymm6     #  2     0x5   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpckhpd %ymm6, %ymm2, %ymm1       #  3     0x9   4      OPC=vunpckhpd_ymm_ymm_ymm    
  movsd %xmm9, %xmm1                  #  4     0xd   5      OPC=movsd_xmm_xmm            
  retq                                #  5     0x12  1      OPC=retq                     
                                                                                         
.size target, .-target
