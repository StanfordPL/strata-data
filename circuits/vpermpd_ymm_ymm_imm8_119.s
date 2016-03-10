  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vcvtdq2ps %ymm2, %ymm1              #  1     0     4      OPC=vcvtdq2ps_ymm_ymm        
  vpmovzxbd %xmm1, %ymm14             #  2     0x4   5      OPC=vpmovzxbd_ymm_xmm        
  vpunpckhqdq %ymm14, %ymm2, %ymm2    #  3     0x9   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovdqu %ymm2, %ymm9                #  4     0xe   4      OPC=vmovdqu_ymm_ymm          
  callq .move_256_128_ymm2_xmm8_xmm9  #  5     0x12  5      OPC=callq_label              
  vpbroadcastq %xmm2, %ymm0           #  6     0x17  5      OPC=vpbroadcastq_ymm_xmm     
  vunpcklpd %ymm0, %ymm9, %ymm1       #  7     0x1c  4      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                                #  8     0x20  1      OPC=retq                     
                                                                                         
.size target, .-target
