  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  vmovdqa %xmm2, %xmm1  #  1     0    4      OPC=vmovdqa_xmm_xmm  
  vmovd %ebx, %xmm8     #  2     0x4  4      OPC=vmovd_xmm_r32    
  movss %xmm8, %xmm1    #  3     0x8  5      OPC=movss_xmm_xmm    
  retq                  #  4     0xd  1      OPC=retq             
                                                                  
.size target, .-target
