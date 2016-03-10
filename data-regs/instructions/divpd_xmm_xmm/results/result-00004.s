  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  vmovlhps %xmm13, %xmm12, %xmm10      #  2     0x5   5      OPC=vmovlhps_xmm_xmm_xmm  
  vmovdqu %xmm2, %xmm14                #  3     0xa   4      OPC=vmovdqu_xmm_xmm       
  vdivpd %ymm14, %ymm10, %ymm7         #  4     0xe   5      OPC=vdivpd_ymm_ymm_ymm    
  movdqa %xmm7, %xmm1                  #  5     0x13  4      OPC=movdqa_xmm_xmm        
  retq                                 #  6     0x17  1      OPC=retq                  
                                                                                       
.size target, .-target
