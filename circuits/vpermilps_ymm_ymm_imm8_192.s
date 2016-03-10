  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                      
.target:                                #        0     0      OPC=<label>                 
  vpbroadcastd %xmm2, %xmm1             #  1     0     5      OPC=vpbroadcastd_xmm_xmm    
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label             
  vbroadcastss %xmm13, %ymm12           #  3     0xa   5      OPC=vbroadcastss_ymm_xmm    
  movupd %xmm1, %xmm12                  #  4     0xf   5      OPC=movupd_xmm_xmm          
  vpunpckhdq %ymm2, %ymm1, %ymm14       #  5     0x14  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckhdq %ymm14, %ymm12, %ymm13     #  6     0x18  5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckhdq %ymm13, %ymm12, %ymm1      #  7     0x1d  5      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                                  #  8     0x22  1      OPC=retq                    
                                                                                          
.size target, .-target
