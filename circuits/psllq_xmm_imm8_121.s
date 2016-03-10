  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  vphsubd %xmm1, %xmm1, %xmm7  #  1     0     5      OPC=vphsubd_xmm_xmm_xmm   
  vpbroadcastw %xmm7, %ymm15   #  2     0x5   5      OPC=vpbroadcastw_ymm_xmm  
  divpd %xmm15, %xmm1          #  3     0xa   5      OPC=divpd_xmm_xmm         
  vandnpd %xmm1, %xmm1, %xmm7  #  4     0xf   4      OPC=vandnpd_xmm_xmm_xmm   
  movdqu %xmm7, %xmm1          #  5     0x13  4      OPC=movdqu_xmm_xmm        
  retq                         #  6     0x17  1      OPC=retq                  
                                                                               
.size target, .-target
