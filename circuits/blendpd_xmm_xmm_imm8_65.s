  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  vphsubd %xmm2, %xmm2, %xmm9  #  1     0     5      OPC=vphsubd_xmm_xmm_xmm  
  subsd %xmm1, %xmm1           #  2     0x5   4      OPC=subsd_xmm_xmm        
  subss %xmm9, %xmm1           #  3     0x9   5      OPC=subss_xmm_xmm        
  movddup %xmm2, %xmm2         #  4     0xe   4      OPC=movddup_xmm_xmm      
  movsd %xmm2, %xmm1           #  5     0x12  4      OPC=movsd_xmm_xmm        
  retq                         #  6     0x16  1      OPC=retq                 
                                                                              
.size target, .-target
