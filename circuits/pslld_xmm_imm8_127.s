  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vcvtps2dq %xmm1, %xmm11  #  1     0     4      OPC=vcvtps2dq_xmm_xmm  
  addpd %xmm11, %xmm11     #  2     0x4   5      OPC=addpd_xmm_xmm      
  punpckhdq %xmm11, %xmm1  #  3     0x9   5      OPC=punpckhdq_xmm_xmm  
  pandn %xmm1, %xmm1       #  4     0xe   4      OPC=pandn_xmm_xmm      
  retq                     #  5     0x12  1      OPC=retq               
                                                                        
.size target, .-target
