  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  vunpcklpd %ymm2, %ymm3, %ymm0      #  1     0     4      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_128_64_xmm2_xmm8_xmm9  #  2     0x4   5      OPC=callq_label            
  punpcklqdq %xmm9, %xmm0            #  3     0x9   5      OPC=punpcklqdq_xmm_xmm     
  vunpckhpd %ymm3, %ymm0, %ymm1      #  4     0xe   4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                               #  5     0x12  1      OPC=retq                   
                                                                                      
.size target, .-target
