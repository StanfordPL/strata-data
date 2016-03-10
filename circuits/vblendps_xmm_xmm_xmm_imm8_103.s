  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  movsldup %xmm3, %xmm13           #  1     0     5      OPC=movsldup_xmm_xmm        
  vpunpckhdq %xmm2, %xmm13, %xmm4  #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vrsqrtss %xmm13, %xmm4, %xmm1    #  3     0x9   5      OPC=vrsqrtss_xmm_xmm_xmm    
  movsd %xmm3, %xmm1               #  4     0xe   4      OPC=movsd_xmm_xmm           
  retq                             #  5     0x12  1      OPC=retq                    
                                                                                     
.size target, .-target
