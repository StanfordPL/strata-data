  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                
.target:                              #        0     0      OPC=<label>           
  movmskpd %xmm1, %r8d                #  1     0     5      OPC=movmskpd_r32_xmm  
  callq .move_r8b_to_byte_11_of_ymm1  #  2     0x5   5      OPC=callq_label       
  callq .move_r8b_to_byte_15_of_ymm1  #  3     0xa   5      OPC=callq_label       
  movq $0x1, %rbx                     #  4     0xf   10     OPC=movq_r64_imm64    
  callq .move_byte_14_of_ymm1_to_r8b  #  5     0x19  5      OPC=callq_label       
  xaddb %bl, %r8b                     #  6     0x1e  4      OPC=xaddb_r8_r8       
  retq                                #  7     0x22  1      OPC=retq              
                                                                                  
.size target, .-target
