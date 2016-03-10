  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode             
.target:                                          #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label    
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3  #  2     0x5   5      OPC=callq_label    
  callq .move_128_064_xmm3_r8_r9                  #  3     0xa   5      OPC=callq_label    
  xchgw %r9w, %bx                                 #  4     0xf   4      OPC=xchgw_r16_r16  
  callq .move_064_128_r8_r9_xmm1                  #  5     0x13  5      OPC=callq_label    
  retq                                            #  6     0x18  1      OPC=retq           
                                                                                           
.size target, .-target
