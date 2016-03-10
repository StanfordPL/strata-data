  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  punpckhwd %xmm3, %xmm2         #  1     0    4      OPC=punpckhwd_xmm_xmm      
  movddup %xmm2, %xmm1           #  2     0x4  4      OPC=movddup_xmm_xmm        
  vunpckhpd %xmm2, %xmm1, %xmm1  #  3     0x8  4      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                           #  4     0xc  1      OPC=retq                   
                                                                                 
.size target, .-target
