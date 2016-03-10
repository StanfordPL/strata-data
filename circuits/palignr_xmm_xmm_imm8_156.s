  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpunpcklqdq %xmm2, %xmm2, %xmm14  #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vunpcklps %xmm14, %xmm14, %xmm5   #  2     0x4   5      OPC=vunpcklps_xmm_xmm_xmm    
  vandnps %xmm5, %xmm5, %xmm5       #  3     0x9   4      OPC=vandnps_xmm_xmm_xmm      
  movsldup %xmm5, %xmm1             #  4     0xd   4      OPC=movsldup_xmm_xmm         
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
