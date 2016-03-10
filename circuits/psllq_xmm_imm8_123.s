  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %xmm8  #  1     0     5      OPC=vpmovsxdq_xmm_xmm  
  vpmovzxbq %xmm8, %ymm9  #  2     0x5   5      OPC=vpmovzxbq_ymm_xmm  
  vpmovzxbd %xmm1, %ymm6  #  3     0xa   5      OPC=vpmovzxbd_ymm_xmm  
  subps %xmm9, %xmm6      #  4     0xf   4      OPC=subps_xmm_xmm      
  pmovzxbd %xmm6, %xmm1   #  5     0x13  5      OPC=pmovzxbd_xmm_xmm   
  retq                    #  6     0x18  1      OPC=retq               
                                                                       
.size target, .-target
