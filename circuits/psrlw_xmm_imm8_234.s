  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  xorps %xmm1, %xmm1       #  1     0     3      OPC=xorps_xmm_xmm      
  vsqrtps %xmm1, %xmm13    #  2     0x3   4      OPC=vsqrtps_xmm_xmm    
  vcvtps2dq %ymm13, %ymm9  #  3     0x7   5      OPC=vcvtps2dq_ymm_ymm  
  punpckldq %xmm9, %xmm1   #  4     0xc   5      OPC=punpckldq_xmm_xmm  
  retq                     #  5     0x11  1      OPC=retq               
                                                                        
.size target, .-target
