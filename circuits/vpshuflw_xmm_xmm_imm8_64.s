  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpbroadcastw %xmm2, %ymm7                       #  2     0x5   5      OPC=vpbroadcastw_ymm_xmm  
  punpckldq %xmm8, %xmm7                          #  3     0xa   5      OPC=punpckldq_xmm_xmm     
  vmovsd %xmm7, %xmm2, %xmm1                      #  4     0xf   4      OPC=vmovsd_xmm_xmm_xmm    
  retq                                            #  5     0x13  1      OPC=retq                  
                                                                                                  
.size target, .-target
