  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  pmovzxdq %xmm2, %xmm13                #  1     0     6      OPC=pmovzxdq_xmm_xmm       
  vunpckhpd %xmm3, %xmm13, %xmm1        #  2     0x6   4      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_256_128_ymm1_xmm10_xmm11  #  3     0xa   5      OPC=callq_label            
  vmovdqu %ymm2, %ymm1                  #  4     0xf   4      OPC=vmovdqu_ymm_ymm        
  movaps %xmm11, %xmm1                  #  5     0x13  4      OPC=movaps_xmm_xmm         
  retq                                  #  6     0x17  1      OPC=retq                   
                                                                                         
.size target, .-target
