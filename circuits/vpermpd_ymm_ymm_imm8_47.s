  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vunpckhpd %xmm13, %xmm13, %xmm3       #  2     0x5   5      OPC=vunpckhpd_xmm_xmm_xmm    
  vpunpcklqdq %xmm2, %xmm13, %xmm13     #  3     0xa   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovaps %ymm3, %ymm12                 #  4     0xe   4      OPC=vmovaps_ymm_ymm          
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x12  5      OPC=callq_label              
  retq                                  #  6     0x17  1      OPC=retq                     
                                                                                           
.size target, .-target
