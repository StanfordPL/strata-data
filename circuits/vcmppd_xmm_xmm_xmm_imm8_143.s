  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vzeroall                          #  1     0     3      OPC=vzeroall                 
  vdivss %xmm5, %xmm3, %xmm12       #  2     0x3   4      OPC=vdivss_xmm_xmm_xmm       
  psubq %xmm12, %xmm1               #  3     0x7   5      OPC=psubq_xmm_xmm            
  movshdup %xmm1, %xmm6             #  4     0xc   4      OPC=movshdup_xmm_xmm         
  pmovsxdq %xmm6, %xmm13            #  5     0x10  6      OPC=pmovsxdq_xmm_xmm         
  vpunpcklqdq %xmm13, %xmm6, %xmm1  #  6     0x16  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                              #  7     0x1b  1      OPC=retq                     
                                                                                       
.size target, .-target
