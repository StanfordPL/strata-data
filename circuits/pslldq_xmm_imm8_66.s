  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vpxor %xmm1, %xmm1, %xmm3  #  1     0    4      OPC=vpxor_xmm_xmm_xmm  
  vmovapd %ymm3, %ymm13      #  2     0x4  4      OPC=vmovapd_ymm_ymm    
  movddup %xmm13, %xmm1      #  3     0x8  5      OPC=movddup_xmm_xmm    
  retq                       #  4     0xd  1      OPC=retq               
                                                                         
.size target, .-target
