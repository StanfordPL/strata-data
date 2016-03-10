  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode              
.target:               #        0    0      OPC=<label>         
  movdqa %xmm1, %xmm7  #  1     0    4      OPC=movdqa_xmm_xmm  
  orpd %xmm2, %xmm7    #  2     0x4  4      OPC=orpd_xmm_xmm    
  pxor %xmm7, %xmm1    #  3     0x8  4      OPC=pxor_xmm_xmm    
  retq                 #  4     0xc  1      OPC=retq            
                                                                
.size target, .-target
