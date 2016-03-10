  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  sqrtsd %xmm2, %xmm3         #  1     0     4      OPC=sqrtsd_xmm_xmm      
  vsqrtpd %xmm3, %xmm14       #  2     0x4   4      OPC=vsqrtpd_xmm_xmm     
  pmovzxdq %xmm14, %xmm7      #  3     0x8   6      OPC=pmovzxdq_xmm_xmm    
  vandps %xmm7, %xmm3, %xmm1  #  4     0xe   4      OPC=vandps_xmm_xmm_xmm  
  unpckhps %xmm3, %xmm2       #  5     0x12  3      OPC=unpckhps_xmm_xmm    
  movdqu %xmm2, %xmm1         #  6     0x15  4      OPC=movdqu_xmm_xmm      
  retq                        #  7     0x19  1      OPC=retq                
                                                                            
.size target, .-target
