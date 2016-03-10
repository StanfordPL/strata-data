  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                 #  Line  RIP  Bytes  Opcode              
.target:               #        0    0      OPC=<label>         
  movaps %xmm1, %xmm3  #  1     0    3      OPC=movaps_xmm_xmm  
  movd %xmm3, %ebx     #  2     0x3  4      OPC=movd_r32_xmm    
  retq                 #  3     0x7  1      OPC=retq            
                                                                
.size target, .-target
