  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  movshdup %xmm2, %xmm9            #  1     0     5      OPC=movshdup_xmm_xmm        
  vpunpckhdq %xmm9, %xmm1, %xmm13  #  2     0x5   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpckldq %xmm9, %xmm1           #  3     0xa   5      OPC=punpckldq_xmm_xmm       
  movlhps %xmm13, %xmm1            #  4     0xf   4      OPC=movlhps_xmm_xmm         
  retq                             #  5     0x13  1      OPC=retq                    
                                                                                     
.size target, .-target
