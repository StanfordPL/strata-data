  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmovd %ebx, %xmm10           #  1     0    4      OPC=vmovd_xmm_r32       
  vmovss %xmm10, %xmm1, %xmm0  #  2     0x4  5      OPC=vmovss_xmm_xmm_xmm  
  movups %xmm0, %xmm1          #  3     0x9  3      OPC=movups_xmm_xmm      
  retq                         #  4     0xc  1      OPC=retq                
                                                                            
.size target, .-target
