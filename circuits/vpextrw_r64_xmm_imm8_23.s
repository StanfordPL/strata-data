  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  callq .move_byte_14_of_ymm1_to_r8b            #  2     0x5   5      OPC=callq_label       
  movmskpd %xmm5, %rbx                          #  3     0xa   4      OPC=movmskpd_r64_xmm  
  callq .move_byte_15_of_ymm1_to_r9b            #  4     0xe   5      OPC=callq_label       
  callq .move_008_016_r8b_r9b_bx                #  5     0x13  5      OPC=callq_label       
  retq                                          #  6     0x18  1      OPC=retq              
                                                                                            
.size target, .-target
