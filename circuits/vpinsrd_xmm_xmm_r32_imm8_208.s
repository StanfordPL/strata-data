  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                      
.target:                         #        0    0      OPC=<label>                 
  vcvtsi2ssl %ebx, %xmm2, %xmm1  #  1     0    4      OPC=vcvtsi2ssl_xmm_xmm_r32  
  vmovd %ebx, %xmm0              #  2     0x4  4      OPC=vmovd_xmm_r32           
  movss %xmm0, %xmm1             #  3     0x8  4      OPC=movss_xmm_xmm           
  retq                           #  4     0xc  1      OPC=retq                    
                                                                                  
.size target, .-target
