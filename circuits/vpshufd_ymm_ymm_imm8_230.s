  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vpunpcklqdq %ymm2, %ymm2, %ymm13   #  1     0     4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpckhdq %ymm2, %ymm13, %ymm1    #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpckhdq %ymm1, %ymm2, %ymm12    #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpmovzxbd %xmm12, %ymm3            #  4     0xc   5      OPC=vpmovzxbd_ymm_xmm        
  vpunpcklqdq %ymm12, %ymm3, %ymm13  #  5     0x11  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpckhqdq %ymm2, %ymm13, %ymm1   #  6     0x16  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                               #  7     0x1a  1      OPC=retq                     
                                                                                        
.size target, .-target
