  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vmovd %ebx, %xmm10       #  1     0    4      OPC=vmovd_xmm_r32      
  vcvtdq2ps %ymm10, %ymm7  #  2     0x4  5      OPC=vcvtdq2ps_ymm_ymm  
  movss %xmm7, %xmm1       #  3     0x9  4      OPC=movss_xmm_xmm      
  retq                     #  4     0xd  1      OPC=retq               
                                                                       
.size target, .-target
