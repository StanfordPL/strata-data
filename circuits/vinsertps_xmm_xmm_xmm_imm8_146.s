  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vminpd %xmm2, %xmm2, %xmm1        #  1     0     4      OPC=vminpd_xmm_xmm_xmm       
  vmovdqa %xmm2, %xmm12             #  2     0x4   4      OPC=vmovdqa_xmm_xmm          
  vmovapd %xmm12, %xmm13            #  3     0x8   5      OPC=vmovapd_xmm_xmm          
  vpmovzxdq %xmm13, %ymm13          #  4     0xd   5      OPC=vpmovzxdq_ymm_xmm        
  vmovupd %ymm13, %ymm13            #  5     0x12  5      OPC=vmovupd_ymm_ymm          
  vpunpcklqdq %xmm13, %xmm1, %xmm6  #  6     0x17  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vpunpckhqdq %xmm1, %xmm6, %xmm1   #  7     0x1c  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                              #  8     0x20  1      OPC=retq                     
                                                                                       
.size target, .-target
