  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  andnpd %xmm2, %xmm2     #  1     0    4      OPC=andnpd_xmm_xmm     
  vpmovzxwd %xmm2, %ymm7  #  2     0x4  5      OPC=vpmovzxwd_ymm_xmm  
  pmovzxbd %xmm7, %xmm1   #  3     0x9  5      OPC=pmovzxbd_xmm_xmm   
  retq                    #  4     0xe  1      OPC=retq               
                                                                      
.size target, .-target
