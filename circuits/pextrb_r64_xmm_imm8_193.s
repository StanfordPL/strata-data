  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  vmovupd %xmm8, %xmm1                            #  2     0x5   5      OPC=vmovupd_xmm_xmm  
  movq $0x1, %rbx                                 #  3     0xa   10     OPC=movq_r64_imm64   
  callq .move_byte_1_of_ymm1_to_r9b               #  4     0x14  5      OPC=callq_label      
  xaddb %bl, %r9b                                 #  5     0x19  4      OPC=xaddb_r8_r8      
  retq                                            #  6     0x1d  1      OPC=retq             
                                                                                             
.size target, .-target
