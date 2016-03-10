  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vpandn %xmm1, %xmm1, %xmm10  #  1     0    4      OPC=vpandn_xmm_xmm_xmm  
  vmovdqu %ymm10, %ymm12       #  2     0x4  5      OPC=vmovdqu_ymm_ymm     
  movapd %xmm12, %xmm1         #  3     0x9  5      OPC=movapd_xmm_xmm      
  retq                         #  4     0xe  1      OPC=retq                
                                                                            
.size target, .-target
