  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  vminss %xmm1, %xmm1, %xmm3   #  1     0     4      OPC=vminss_xmm_xmm_xmm   
  vandnpd %ymm3, %ymm3, %ymm3  #  2     0x4   4      OPC=vandnpd_ymm_ymm_ymm  
  vpmovzxwq %xmm3, %xmm15      #  3     0x8   5      OPC=vpmovzxwq_xmm_xmm    
  punpcklqdq %xmm15, %xmm1     #  4     0xd   5      OPC=punpcklqdq_xmm_xmm   
  unpckhpd %xmm15, %xmm1       #  5     0x12  5      OPC=unpckhpd_xmm_xmm     
  retq                         #  6     0x17  1      OPC=retq                 
                                                                              
.size target, .-target
