  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpbroadcastw %xmm8, %xmm9                       #  2     0x5   5      OPC=vpbroadcastw_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm3               #  3     0xa   5      OPC=callq_label           
  callq .move_128_064_xmm3_r12_r13                #  4     0xf   5      OPC=callq_label           
  movzbq %r12b, %rbx                              #  5     0x14  4      OPC=movzbq_r64_r8         
  retq                                            #  6     0x18  1      OPC=retq                  
                                                                                                  
.size target, .-target
