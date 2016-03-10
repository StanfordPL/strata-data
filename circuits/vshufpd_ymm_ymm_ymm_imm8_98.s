  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm3_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vunpckhpd %xmm13, %xmm12, %xmm7       #  2     0x5   5      OPC=vunpckhpd_xmm_xmm_xmm    
  movupd %xmm7, %xmm3                   #  3     0xa   4      OPC=movupd_xmm_xmm           
  vpunpcklqdq %ymm3, %ymm2, %ymm1       #  4     0xe   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                  #  5     0x12  1      OPC=retq                     
                                                                                           
.size target, .-target
