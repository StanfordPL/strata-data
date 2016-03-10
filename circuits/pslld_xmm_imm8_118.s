  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovzxdq %xmm1, %ymm2  #  1     0    5      OPC=vpmovzxdq_ymm_xmm  
  movdqu %xmm2, %xmm1     #  2     0x5  4      OPC=movdqu_xmm_xmm     
  pandn %xmm2, %xmm1      #  3     0x9  4      OPC=pandn_xmm_xmm      
  retq                    #  4     0xd  1      OPC=retq               
                                                                      
.size target, .-target
