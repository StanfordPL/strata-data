  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label           
  vmovss %xmm2, %xmm3, %xmm1                      #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm    
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label           
  vbroadcastsd %xmm6, %ymm10                      #  4     0xe   5      OPC=vbroadcastsd_ymm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label           
  retq                                            #  6     0x18  1      OPC=retq                  
                                                                                                  
.size target, .-target
