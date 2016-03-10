  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vunpckhpd %ymm2, %ymm2, %ymm3         #  2     0x5   4      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpcklqdq %ymm2, %ymm3, %ymm1       #  3     0x9   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movdqa %xmm11, %xmm1                  #  4     0xd   5      OPC=movdqa_xmm_xmm           
  retq                                  #  5     0x12  1      OPC=retq                     
                                                                                           
.size target, .-target
