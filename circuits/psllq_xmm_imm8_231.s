  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  pmovsxwq %xmm1, %xmm9       #  1     0     6      OPC=pmovsxwq_xmm_xmm    
  vxorps %xmm9, %xmm9, %xmm0  #  2     0x6   5      OPC=vxorps_xmm_xmm_xmm  
  vminss %xmm0, %xmm0, %xmm6  #  3     0xb   4      OPC=vminss_xmm_xmm_xmm  
  movddup %xmm6, %xmm1        #  4     0xf   4      OPC=movddup_xmm_xmm     
  retq                        #  5     0x13  1      OPC=retq                
                                                                            
.size target, .-target
