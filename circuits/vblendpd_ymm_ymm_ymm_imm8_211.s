  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vphaddd %xmm3, %xmm2, %xmm9  #  1     0    5      OPC=vphaddd_xmm_xmm_xmm  
  vpxor %ymm9, %ymm2, %ymm1    #  2     0x5  5      OPC=vpxor_ymm_ymm_ymm    
  movups %xmm3, %xmm1          #  3     0xa  3      OPC=movups_xmm_xmm       
  retq                         #  4     0xd  1      OPC=retq                 
                                                                             
.size target, .-target
