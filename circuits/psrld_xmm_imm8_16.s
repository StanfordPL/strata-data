  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                      
.target:                              #        0     0      OPC=<label>                 
  vpmovzxwd %xmm1, %ymm3              #  1     0     5      OPC=vpmovzxwd_ymm_xmm       
  callq .move_256_128_ymm3_xmm8_xmm9  #  2     0x5   5      OPC=callq_label             
  vunpckhps %xmm9, %xmm3, %xmm7       #  3     0xa   5      OPC=vunpckhps_xmm_xmm_xmm   
  vpunpckldq %xmm9, %xmm3, %xmm15     #  4     0xf   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckhdq %ymm7, %ymm15, %ymm11    #  5     0x14  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  movapd %xmm11, %xmm1                #  6     0x18  5      OPC=movapd_xmm_xmm          
  retq                                #  7     0x1d  1      OPC=retq                    
                                                                                        
.size target, .-target
