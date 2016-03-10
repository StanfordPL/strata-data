  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP  Bytes  Opcode              
.target:                #        0    0      OPC=<label>         
  vmovd %ebx, %xmm9     #  1     0    4      OPC=vmovd_xmm_r32   
  movupd %xmm9, %xmm10  #  2     0x4  5      OPC=movupd_xmm_xmm  
  movss %xmm10, %xmm1   #  3     0x9  5      OPC=movss_xmm_xmm   
  retq                  #  4     0xe  1      OPC=retq            
                                                                 
.size target, .-target
