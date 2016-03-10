  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmovd %ebx, %xmm12           #  1     0    4      OPC=vmovd_xmm_r32       
  vmovss %xmm12, %xmm1, %xmm7  #  2     0x4  5      OPC=vmovss_xmm_xmm_xmm  
  movups %xmm7, %xmm1          #  3     0x9  3      OPC=movups_xmm_xmm      
  retq                         #  4     0xc  1      OPC=retq                
                                                                            
.size target, .-target
