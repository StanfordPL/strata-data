  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  movd %ebx, %xmm10     #  1     0    5      OPC=movd_xmm_r32     
  vmovupd %xmm2, %xmm1  #  2     0x5  4      OPC=vmovupd_xmm_xmm  
  movss %xmm10, %xmm1   #  3     0x9  5      OPC=movss_xmm_xmm    
  retq                  #  4     0xe  1      OPC=retq             
                                                                  
.size target, .-target
