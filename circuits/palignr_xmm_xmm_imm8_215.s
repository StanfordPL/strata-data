  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vpandn %xmm2, %xmm2, %xmm10  #  1     0    4      OPC=vpandn_xmm_xmm_xmm  
  vmovddup %ymm10, %ymm12      #  2     0x4  5      OPC=vmovddup_ymm_ymm    
  movdqu %xmm12, %xmm1         #  3     0x9  5      OPC=movdqu_xmm_xmm      
  retq                         #  4     0xe  1      OPC=retq                
                                                                            
.size target, .-target
