  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  vmovd %ebx, %xmm3     #  1     0    4      OPC=vmovd_xmm_r32    
  vmovapd %xmm3, %xmm8  #  2     0x4  4      OPC=vmovapd_xmm_xmm  
  movss %xmm8, %xmm1    #  3     0x8  5      OPC=movss_xmm_xmm    
  retq                  #  4     0xd  1      OPC=retq             
                                                                  
.size target, .-target
