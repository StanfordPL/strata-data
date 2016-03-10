  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_128_64_xmm3_xmm12_xmm13   #  1     0     5      OPC=callq_label           
  vmovdqa %xmm2, %xmm10                 #  2     0x5   4      OPC=vmovdqa_xmm_xmm       
  vbroadcastsd %xmm12, %ymm11           #  3     0x9   5      OPC=vbroadcastsd_ymm_xmm  
  unpcklpd %xmm13, %xmm11               #  4     0xe   5      OPC=unpcklpd_xmm_xmm      
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x13  5      OPC=callq_label           
  retq                                  #  6     0x18  1      OPC=retq                  
                                                                                        
.size target, .-target
