  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                      
.target:                           #        0    0      OPC=<label>                 
  vmovd %ebx, %xmm12               #  1     0    4      OPC=vmovd_xmm_r32           
  vpunpckldq %xmm12, %xmm1, %xmm4  #  2     0x4  5      OPC=vpunpckldq_xmm_xmm_xmm  
  movsd %xmm4, %xmm1               #  3     0x9  4      OPC=movsd_xmm_xmm           
  retq                             #  4     0xd  1      OPC=retq                    
                                                                                    
.size target, .-target
