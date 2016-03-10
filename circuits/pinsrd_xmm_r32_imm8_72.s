  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  movd %ebx, %xmm8    #  1     0    5      OPC=movd_xmm_r32   
  movss %xmm8, %xmm1  #  2     0x5  5      OPC=movss_xmm_xmm  
  retq                #  3     0xa  1      OPC=retq           
                                                              
.size target, .-target
