  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vphsubd %xmm2, %xmm2, %xmm8       #  1     0     5      OPC=vphsubd_xmm_xmm_xmm      
  callq .move_128_064_xmm2_r12_r13  #  2     0x5   5      OPC=callq_label              
  vunpckhpd %ymm8, %ymm2, %ymm14    #  3     0xa   5      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpcklqdq %ymm2, %ymm14, %ymm1  #  4     0xf   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_064_128_r12_r13_xmm1  #  5     0x13  5      OPC=callq_label              
  retq                              #  6     0x18  1      OPC=retq                     
                                                                                       
.size target, .-target
