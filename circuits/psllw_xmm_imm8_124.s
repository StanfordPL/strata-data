  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vpandn %xmm1, %xmm1, %xmm14  #  1     0     4      OPC=vpandn_xmm_xmm_xmm  
  vpmovzxbq %xmm14, %xmm0      #  2     0x4   5      OPC=vpmovzxbq_xmm_xmm   
  unpcklpd %xmm0, %xmm1        #  3     0x9   4      OPC=unpcklpd_xmm_xmm    
  cvtss2sd %xmm14, %xmm1       #  4     0xd   5      OPC=cvtss2sd_xmm_xmm    
  retq                         #  5     0x12  1      OPC=retq                
                                                                             
.size target, .-target
