  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm11, %xmm1, %xmm1                 #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_byte_8_of_ymm1_to_r9b               #  3     0xa   5      OPC=callq_label             
  movzbq %r9b, %rbx                               #  4     0xf   4      OPC=movzbq_r64_r8           
  retq                                            #  5     0x13  1      OPC=retq                    
                                                                                                    
.size target, .-target
