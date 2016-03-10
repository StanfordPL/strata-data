  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  movq $0x40, %rbx                                #  1     0     10     OPC=movq_r64_imm64   
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0xa   5      OPC=callq_label      
  vmovdqa %xmm11, %xmm9                           #  3     0xf   5      OPC=vmovdqa_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  4     0x14  5      OPC=callq_label      
  callq .move_byte_11_of_ymm1_to_r9b              #  5     0x19  5      OPC=callq_label      
  xchgb %r9b, %bl                                 #  6     0x1e  3      OPC=xchgb_r8_r8      
  retq                                            #  7     0x21  1      OPC=retq             
                                                                                             
.size target, .-target
