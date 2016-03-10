  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vpandn %xmm2, %xmm2, %xmm14  #  1     0    4      OPC=vpandn_xmm_xmm_xmm  
  vmovsldup %xmm14, %xmm6      #  2     0x4  5      OPC=vmovsldup_xmm_xmm   
  movsd %xmm6, %xmm1           #  3     0x9  4      OPC=movsd_xmm_xmm       
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
