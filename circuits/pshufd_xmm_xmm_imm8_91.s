  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  movshdup %xmm2, %xmm4          #  1     0     4      OPC=movshdup_xmm_xmm       
  vunpckhps %xmm2, %xmm4, %xmm5  #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm  
  movdqa %xmm5, %xmm1            #  3     0x8   4      OPC=movdqa_xmm_xmm         
  unpcklpd %xmm4, %xmm1          #  4     0xc   4      OPC=unpcklpd_xmm_xmm       
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
