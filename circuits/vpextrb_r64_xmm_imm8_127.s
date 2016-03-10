  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  callq .move_byte_15_of_ymm1_to_r8b              #  2     0x5   5      OPC=callq_label       
  movmskpd %xmm8, %rbx                            #  3     0xa   5      OPC=movmskpd_r64_xmm  
  xaddb %bl, %r8b                                 #  4     0xf   4      OPC=xaddb_r8_r8       
  retq                                            #  5     0x13  1      OPC=retq              
                                                                                              
.size target, .-target
