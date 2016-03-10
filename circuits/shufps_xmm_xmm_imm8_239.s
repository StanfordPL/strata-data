  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  vmovshdup %xmm1, %xmm11           #  1     0     4      OPC=vmovshdup_xmm_xmm      
  movdqa %xmm2, %xmm12              #  2     0x4   5      OPC=movdqa_xmm_xmm         
  vunpckhpd %xmm12, %xmm11, %xmm14  #  3     0x9   5      OPC=vunpckhpd_xmm_xmm_xmm  
  movdqu %xmm14, %xmm1              #  4     0xe   5      OPC=movdqu_xmm_xmm         
  retq                              #  5     0x13  1      OPC=retq                   
                                                                                     
.size target, .-target
