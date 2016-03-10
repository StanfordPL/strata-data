  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  callq .move_128_64_xmm2_xmm12_xmm13             #  2     0x5   5      OPC=callq_label           
  vbroadcastss %xmm11, %ymm9                      #  3     0xa   5      OPC=vbroadcastss_ymm_xmm  
  punpckldq %xmm12, %xmm9                         #  4     0xf   5      OPC=punpckldq_xmm_xmm     
  movdqu %xmm9, %xmm1                             #  5     0x14  5      OPC=movdqu_xmm_xmm        
  retq                                            #  6     0x19  1      OPC=retq                  
                                                                                                  
.size target, .-target
