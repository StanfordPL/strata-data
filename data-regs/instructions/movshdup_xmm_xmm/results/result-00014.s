  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm11, %ymm10                     #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm  
  vmovshdup %xmm2, %xmm15                         #  3     0xa   4      OPC=vmovshdup_xmm_xmm     
  vmovups %xmm15, %xmm8                           #  4     0xe   5      OPC=vmovups_xmm_xmm       
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label           
  retq                                            #  6     0x18  1      OPC=retq                  
                                                                                                  
.size target, .-target
