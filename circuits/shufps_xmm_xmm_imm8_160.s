  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovq %xmm10, %xmm15                            #  2     0x5   5      OPC=vmovq_xmm_xmm           
  vpbroadcastd %xmm1, %xmm14                      #  3     0xa   5      OPC=vpbroadcastd_xmm_xmm    
  vpunpckldq %ymm15, %ymm14, %ymm15               #  4     0xf   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckldq %ymm15, %ymm15, %ymm11               #  5     0x14  5      OPC=vpunpckldq_ymm_ymm_ymm  
  movshdup %xmm11, %xmm1                          #  6     0x19  5      OPC=movshdup_xmm_xmm        
  retq                                            #  7     0x1e  1      OPC=retq                    
                                                                                                    
.size target, .-target
