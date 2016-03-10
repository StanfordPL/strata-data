  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vunpckhpd %ymm2, %ymm2, %ymm1         #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm    
  callq .move_128_64_xmm2_xmm8_xmm9     #  2     0x4   5      OPC=callq_label              
  callq .move_256_128_ymm1_xmm10_xmm11  #  3     0x9   5      OPC=callq_label              
  vpunpcklqdq %ymm2, %ymm1, %ymm1       #  4     0xe   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movsd %xmm11, %xmm1                   #  5     0x12  5      OPC=movsd_xmm_xmm            
  punpcklqdq %xmm9, %xmm1               #  6     0x17  5      OPC=punpcklqdq_xmm_xmm       
  retq                                  #  7     0x1c  1      OPC=retq                     
                                                                                           
.size target, .-target
