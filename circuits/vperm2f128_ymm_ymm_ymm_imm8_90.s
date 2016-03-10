  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  vmovaps %ymm2, %ymm9                            #  1     0     4      OPC=vmovaps_ymm_ymm       
  vpmovzxwq %xmm9, %xmm6                          #  2     0x4   5      OPC=vpmovzxwq_xmm_xmm     
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label           
  vpandn %ymm6, %ymm6, %ymm7                      #  4     0xe   4      OPC=vpandn_ymm_ymm_ymm    
  vpbroadcastw %xmm7, %xmm14                      #  5     0x12  5      OPC=vpbroadcastw_xmm_xmm  
  vpxor %xmm14, %xmm9, %xmm0                      #  6     0x17  5      OPC=vpxor_xmm_xmm_xmm     
  vpandn %ymm9, %ymm0, %ymm1                      #  7     0x1c  5      OPC=vpandn_ymm_ymm_ymm    
  retq                                            #  8     0x21  1      OPC=retq                  
                                                                                                  
.size target, .-target
