  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                 
.target:                       #        0    0      OPC=<label>            
  vpxor %xmm11, %xmm11, %xmm3  #  1     0    5      OPC=vpxor_xmm_xmm_xmm  
  movddup %xmm3, %xmm1         #  2     0x5  4      OPC=movddup_xmm_xmm    
  retq                         #  3     0x9  1      OPC=retq               
                                                                           
.size target, .-target
