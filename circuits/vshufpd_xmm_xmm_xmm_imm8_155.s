  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vmovups %xmm3, %xmm4           #  1     0    4      OPC=vmovups_xmm_xmm        
  vunpckhpd %xmm4, %xmm2, %xmm1  #  2     0x4  4      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                           #  3     0x8  1      OPC=retq                   
                                                                                 
.size target, .-target
