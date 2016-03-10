  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmovdqu %xmm3, %xmm13        #  1     0    4      OPC=vmovdqu_xmm_xmm     
  vpandn %ymm3, %ymm13, %ymm1  #  2     0x4  4      OPC=vpandn_ymm_ymm_ymm  
  retq                         #  3     0x8  1      OPC=retq                
                                                                            
.size target, .-target
