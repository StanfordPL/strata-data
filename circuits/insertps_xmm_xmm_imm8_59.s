  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm10, %ymm4                      #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm  
  vminpd %xmm4, %xmm4, %xmm12                     #  3     0xa   4      OPC=vminpd_xmm_xmm_xmm    
  vmovhlps %xmm9, %xmm12, %xmm13                  #  4     0xe   5      OPC=vmovhlps_xmm_xmm_xmm  
  movdqu %xmm13, %xmm1                            #  5     0x13  5      OPC=movdqu_xmm_xmm        
  retq                                            #  6     0x18  1      OPC=retq                  
                                                                                                  
.size target, .-target
