  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                      
.target:                                #        0     0      OPC=<label>                 
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovhlps %xmm10, %xmm3, %xmm8         #  2     0x5   5      OPC=vmovhlps_xmm_xmm_xmm    
  vunpckhpd %ymm2, %ymm3, %ymm3         #  3     0xa   4      OPC=vunpckhpd_ymm_ymm_ymm   
  vpunpcklwd %ymm3, %ymm8, %ymm2        #  4     0xe   4      OPC=vpunpcklwd_ymm_ymm_ymm  
  vpmovzxwd %xmm11, %ymm1               #  5     0x12  5      OPC=vpmovzxwd_ymm_xmm       
  vpaddd %ymm1, %ymm2, %ymm1            #  6     0x17  4      OPC=vpaddd_ymm_ymm_ymm      
  movdqa %xmm2, %xmm1                   #  7     0x1b  4      OPC=movdqa_xmm_xmm          
  retq                                  #  8     0x1f  1      OPC=retq                    
                                                                                          
.size target, .-target
