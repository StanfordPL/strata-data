  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vrcpss %xmm8, %xmm8, %xmm1                      #  2     0x5   5      OPC=vrcpss_xmm_xmm_xmm    
  unpcklps %xmm2, %xmm10                          #  3     0xa   4      OPC=unpcklps_xmm_xmm      
  vbroadcastss %xmm11, %ymm11                     #  4     0xe   5      OPC=vbroadcastss_ymm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1             #  5     0x13  5      OPC=callq_label           
  retq                                            #  6     0x18  1      OPC=retq                  
                                                                                                  
.size target, .-target
