  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode               
.target:                               #        0    0      OPC=<label>          
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0    5      OPC=callq_label      
  vmovupd %ymm3, %ymm1                 #  2     0x5  4      OPC=vmovupd_ymm_ymm  
  movsd %xmm10, %xmm1                  #  3     0x9  5      OPC=movsd_xmm_xmm    
  retq                                 #  4     0xe  1      OPC=retq             
                                                                                 
.size target, .-target
