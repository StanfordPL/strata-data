  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vpunpcklqdq %ymm2, %ymm2, %ymm6       #  1     0     4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpckhpd %ymm6, %ymm2, %ymm3         #  2     0x4   4      OPC=vunpckhpd_ymm_ymm_ymm    
  callq .move_256_128_ymm3_xmm10_xmm11  #  3     0x8   5      OPC=callq_label              
  vmovsd %xmm6, %xmm11, %xmm10          #  4     0xd   4      OPC=vmovsd_xmm_xmm_xmm       
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x11  5      OPC=callq_label              
  retq                                  #  6     0x16  1      OPC=retq                     
                                                                                           
.size target, .-target
