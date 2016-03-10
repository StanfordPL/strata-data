  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  xorpd %xmm1, %xmm1             #  1     0     4      OPC=xorpd_xmm_xmm          
  orpd %xmm1, %xmm1              #  2     0x4   4      OPC=orpd_xmm_xmm           
  vunpcklpd %xmm1, %xmm1, %xmm3  #  3     0x8   4      OPC=vunpcklpd_xmm_xmm_xmm  
  punpckhdq %xmm3, %xmm1         #  4     0xc   4      OPC=punpckhdq_xmm_xmm      
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
