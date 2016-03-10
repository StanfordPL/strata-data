  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vpmovzxwq %xmm2, %xmm9  #  1     0     5      OPC=vpmovzxwq_xmm_xmm  
  vmovapd %ymm9, %ymm11   #  2     0x5   5      OPC=vmovapd_ymm_ymm    
  movdqa %xmm11, %xmm1    #  3     0xa   5      OPC=movdqa_xmm_xmm     
  pand %xmm1, %xmm1       #  4     0xf   4      OPC=pand_xmm_xmm       
  retq                    #  5     0x13  1      OPC=retq               
                                                                       
.size target, .-target
