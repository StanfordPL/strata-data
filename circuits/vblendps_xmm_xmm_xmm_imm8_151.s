  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovsldup %xmm3, %xmm4           #  1     0     4      OPC=vmovsldup_xmm_xmm       
  movddup %xmm3, %xmm1             #  2     0x4   4      OPC=movddup_xmm_xmm         
  vpunpckhdq %xmm2, %xmm4, %xmm11  #  3     0x8   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpckhpd %xmm11, %xmm1, %xmm1   #  4     0xc   5      OPC=vunpckhpd_xmm_xmm_xmm   
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target
