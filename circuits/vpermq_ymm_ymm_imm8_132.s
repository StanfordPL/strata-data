  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  movdqa %xmm2, %xmm11                  #  2     0x5   5      OPC=movdqa_xmm_xmm           
  callq .move_128_256_xmm10_xmm11_ymm3  #  3     0xa   5      OPC=callq_label              
  vmaxsd %xmm2, %xmm3, %xmm12           #  4     0xf   4      OPC=vmaxsd_xmm_xmm_xmm       
  vpunpcklqdq %ymm2, %ymm3, %ymm1       #  5     0x13  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movupd %xmm12, %xmm1                  #  6     0x17  5      OPC=movupd_xmm_xmm           
  retq                                  #  7     0x1c  1      OPC=retq                     
                                                                                           
.size target, .-target
