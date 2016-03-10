  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhpd %xmm2, %xmm1, %xmm3  #  1     0    4      OPC=vunpckhpd_xmm_xmm_xmm  
  movss %xmm1, %xmm3             #  2     0x4  4      OPC=movss_xmm_xmm          
  movups %xmm3, %xmm1            #  3     0x8  3      OPC=movups_xmm_xmm         
  retq                           #  4     0xb  1      OPC=retq                   
                                                                                 
.size target, .-target
