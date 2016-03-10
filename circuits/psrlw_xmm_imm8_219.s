  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vandnps %xmm1, %xmm1, %xmm2  #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  movddup %xmm2, %xmm1         #  2     0x4  4      OPC=movddup_xmm_xmm      
  movlhps %xmm1, %xmm1         #  3     0x8  3      OPC=movlhps_xmm_xmm      
  retq                         #  4     0xb  1      OPC=retq                 
                                                                             
.size target, .-target
