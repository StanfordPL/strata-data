  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpbroadcastd %xmm2, %ymm15           #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm    
  movshdup %xmm11, %xmm1               #  3     0xa   5      OPC=movshdup_xmm_xmm        
  vsubpd %xmm11, %xmm2, %xmm6          #  4     0xf   5      OPC=vsubpd_xmm_xmm_xmm      
  vpunpckhdq %xmm15, %xmm6, %xmm4      #  5     0x14  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movlhps %xmm4, %xmm1                 #  6     0x19  3      OPC=movlhps_xmm_xmm         
  retq                                 #  7     0x1c  1      OPC=retq                    
                                                                                         
.size target, .-target
