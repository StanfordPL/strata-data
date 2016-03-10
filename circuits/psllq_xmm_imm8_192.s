  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  subss %xmm1, %xmm1           #  1     0     4      OPC=subss_xmm_xmm        
  vandnpd %xmm1, %xmm1, %xmm0  #  2     0x4   4      OPC=vandnpd_xmm_xmm_xmm  
  pmovzxbd %xmm0, %xmm1        #  3     0x8   5      OPC=pmovzxbd_xmm_xmm     
  minsd %xmm1, %xmm1           #  4     0xd   4      OPC=minsd_xmm_xmm        
  retq                         #  5     0x11  1      OPC=retq                 
                                                                              
.size target, .-target
