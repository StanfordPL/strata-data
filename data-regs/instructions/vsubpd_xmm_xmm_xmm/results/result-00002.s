  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpbroadcastd %xmm3, %xmm1                       #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  3     0xa   5      OPC=callq_label           
  vmovaps %xmm3, %xmm3                            #  4     0xf   4      OPC=vmovaps_xmm_xmm       
  vsubpd %ymm3, %ymm1, %ymm1                      #  5     0x13  4      OPC=vsubpd_ymm_ymm_ymm    
  retq                                            #  6     0x17  1      OPC=retq                  
                                                                                                  
.size target, .-target
