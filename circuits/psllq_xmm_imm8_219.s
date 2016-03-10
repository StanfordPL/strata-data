  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vpmovzxbq %xmm1, %ymm11  #  1     0    5      OPC=vpmovzxbq_ymm_xmm  
  subps %xmm11, %xmm11     #  2     0x5  4      OPC=subps_xmm_xmm      
  movddup %xmm11, %xmm1    #  3     0x9  5      OPC=movddup_xmm_xmm    
  retq                     #  4     0xe  1      OPC=retq               
                                                                       
.size target, .-target
