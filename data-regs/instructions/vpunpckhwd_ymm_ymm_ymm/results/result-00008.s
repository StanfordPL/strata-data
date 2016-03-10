  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpmovzxbd %xmm3, %ymm11           #  1     0     5      OPC=vpmovzxbd_ymm_xmm        
  vpunpckhqdq %ymm11, %ymm2, %ymm2  #  2     0x5   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpckhpd %ymm3, %ymm3, %ymm10    #  3     0xa   4      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpcklwd %ymm10, %ymm2, %ymm1   #  4     0xe   5      OPC=vpunpcklwd_ymm_ymm_ymm   
  retq                              #  5     0x13  1      OPC=retq                     
                                                                                       
.size target, .-target
