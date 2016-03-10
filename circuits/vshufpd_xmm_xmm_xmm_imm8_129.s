  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhpd %xmm3, %xmm2, %xmm0  #  1     0    4      OPC=vunpckhpd_xmm_xmm_xmm  
  movdqu %xmm0, %xmm5            #  2     0x4  4      OPC=movdqu_xmm_xmm         
  maxps %xmm0, %xmm5             #  3     0x8  3      OPC=maxps_xmm_xmm          
  vunpcklpd %xmm3, %xmm5, %xmm1  #  4     0xb  4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                           #  5     0xf  1      OPC=retq                   
                                                                                 
.size target, .-target
