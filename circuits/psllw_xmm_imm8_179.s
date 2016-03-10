  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm12  #  1     0    5      OPC=vpmovzxwd_ymm_xmm  
  andnpd %xmm12, %xmm12    #  2     0x5  5      OPC=andnpd_xmm_xmm     
  cvtps2pd %xmm12, %xmm1   #  3     0xa  4      OPC=cvtps2pd_xmm_xmm   
  retq                     #  4     0xe  1      OPC=retq               
                                                                       
.size target, .-target
