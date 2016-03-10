  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP   Bytes  Opcode               
.target:                 #        0     0      OPC=<label>          
  vsqrtps %xmm2, %xmm1   #  1     0     4      OPC=vsqrtps_xmm_xmm  
  movddup %xmm2, %xmm13  #  2     0x4   5      OPC=movddup_xmm_xmm  
  movdqa %xmm13, %xmm1   #  3     0x9   5      OPC=movdqa_xmm_xmm   
  maxpd %xmm13, %xmm1    #  4     0xe   5      OPC=maxpd_xmm_xmm    
  retq                   #  5     0x13  1      OPC=retq             
                                                                    
.size target, .-target
