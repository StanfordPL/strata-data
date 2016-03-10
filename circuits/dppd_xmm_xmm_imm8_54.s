  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  mulpd %xmm2, %xmm1           #  1     0     4      OPC=mulpd_xmm_xmm        
  vhaddpd %xmm2, %xmm1, %xmm8  #  2     0x4   4      OPC=vhaddpd_xmm_xmm_xmm  
  pxor %xmm1, %xmm1            #  3     0x8   4      OPC=pxor_xmm_xmm         
  punpcklqdq %xmm8, %xmm1      #  4     0xc   5      OPC=punpcklqdq_xmm_xmm   
  retq                         #  5     0x11  1      OPC=retq                 
                                                                              
.size target, .-target
