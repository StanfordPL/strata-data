  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  movsldup %xmm1, %xmm5        #  1     0     4      OPC=movsldup_xmm_xmm    
  movsldup %xmm2, %xmm0        #  2     0x4   4      OPC=movsldup_xmm_xmm    
  vpsubq %xmm2, %xmm0, %xmm6   #  3     0x8   4      OPC=vpsubq_xmm_xmm_xmm  
  vmovdqu %xmm6, %xmm9         #  4     0xc   4      OPC=vmovdqu_xmm_xmm     
  vpsubq %xmm1, %xmm5, %xmm12  #  5     0x10  4      OPC=vpsubq_xmm_xmm_xmm  
  phaddd %xmm9, %xmm12         #  6     0x14  6      OPC=phaddd_xmm_xmm      
  movapd %xmm12, %xmm1         #  7     0x1a  5      OPC=movapd_xmm_xmm      
  retq                         #  8     0x1f  1      OPC=retq                
                                                                             
.size target, .-target
