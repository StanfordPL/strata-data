  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vminpd %xmm2, %xmm2, %xmm9  #  1     0    4      OPC=vminpd_xmm_xmm_xmm  
  vpmovzxwd %xmm9, %xmm1      #  2     0x4  5      OPC=vpmovzxwd_xmm_xmm   
  vpmovzxdq %xmm1, %ymm1      #  3     0x9  5      OPC=vpmovzxdq_ymm_xmm   
  retq                        #  4     0xe  1      OPC=retq                
                                                                           
.size target, .-target
