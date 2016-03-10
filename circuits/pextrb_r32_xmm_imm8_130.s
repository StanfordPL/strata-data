  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x10, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  movupd %xmm1, %xmm1                #  2     0xa   4      OPC=movupd_xmm_xmm  
  callq .move_byte_2_of_ymm1_to_r8b  #  3     0xe   5      OPC=callq_label     
  xchgb %r8b, %bl                    #  4     0x13  3      OPC=xchgb_r8_r8     
  retq                               #  5     0x16  1      OPC=retq            
                                                                               
.size target, .-target
