  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  movshdup %xmm2, %xmm0            #  1     0     4      OPC=movshdup_xmm_xmm        
  vpunpckhdq %xmm0, %xmm1, %xmm15  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  unpcklps %xmm0, %xmm1            #  3     0x8   3      OPC=unpcklps_xmm_xmm        
  unpcklpd %xmm15, %xmm1           #  4     0xb   5      OPC=unpcklpd_xmm_xmm        
  retq                             #  5     0x10  1      OPC=retq                    
                                                                                     
.size target, .-target
