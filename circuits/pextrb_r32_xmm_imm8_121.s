  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  movmskpd %xmm11, %ebx                           #  2     0x5   5      OPC=movmskpd_r32_xmm  
  movzbl %bl, %r9d                                #  3     0xa   4      OPC=movzbl_r32_r8     
  callq .move_byte_9_of_ymm1_to_r9b               #  4     0xe   5      OPC=callq_label       
  movq %r9, %rbx                                  #  5     0x13  3      OPC=movq_r64_r64      
  retq                                            #  6     0x16  1      OPC=retq              
                                                                                              
.size target, .-target
