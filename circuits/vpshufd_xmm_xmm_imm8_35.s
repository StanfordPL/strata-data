  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vpbroadcastd %xmm2, %ymm11           #  1     0     5      OPC=vpbroadcastd_ymm_xmm    
  vpunpckhdq %xmm11, %xmm2, %xmm1      #  2     0x5   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_64_xmm1_xmm12_xmm13  #  3     0xa   5      OPC=callq_label             
  unpckhpd %xmm1, %xmm1                #  4     0xf   4      OPC=unpckhpd_xmm_xmm        
  movlhps %xmm12, %xmm1                #  5     0x13  4      OPC=movlhps_xmm_xmm         
  retq                                 #  6     0x17  1      OPC=retq                    
                                                                                         
.size target, .-target
