  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovsxbq %xmm1, %xmm6   #  1     0     5      OPC=vpmovsxbq_xmm_xmm  
  unpckhpd %xmm6, %xmm1    #  2     0x5   4      OPC=unpckhpd_xmm_xmm   
  vpmovzxwq %xmm1, %xmm11  #  3     0x9   5      OPC=vpmovzxwq_xmm_xmm  
  vmovd %xmm11, %ebx       #  4     0xe   4      OPC=vmovd_r32_xmm      
  retq                     #  5     0x12  1      OPC=retq               
                                                                        
.size target, .-target
