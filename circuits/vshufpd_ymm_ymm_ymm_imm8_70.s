  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vunpckhpd %ymm3, %ymm2, %ymm4      #  2     0x5   4      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpcklqdq %ymm3, %ymm4, %ymm1    #  3     0x9   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vmovsd %xmm2, %xmm9, %xmm8         #  4     0xd   4      OPC=vmovsd_xmm_xmm_xmm       
  callq .move_64_128_xmm8_xmm9_xmm1  #  5     0x11  5      OPC=callq_label              
  retq                               #  6     0x16  1      OPC=retq                     
                                                                                        
.size target, .-target
