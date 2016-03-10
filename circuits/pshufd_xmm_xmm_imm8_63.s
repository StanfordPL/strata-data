  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vbroadcastss %xmm11, %ymm0                      #  2     0x5   5      OPC=vbroadcastss_ymm_xmm  
  unpcklps %xmm8, %xmm11                          #  3     0xa   4      OPC=unpcklps_xmm_xmm      
  vmovdqa %ymm0, %ymm10                           #  4     0xe   4      OPC=vmovdqa_ymm_ymm       
  callq .move_64_128_xmm10_xmm11_xmm1             #  5     0x12  5      OPC=callq_label           
  retq                                            #  6     0x17  1      OPC=retq                  
                                                                                                  
.size target, .-target
