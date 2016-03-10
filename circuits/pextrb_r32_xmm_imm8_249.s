  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x10, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_9_of_ymm1_to_r9b  #  2     0xa   5      OPC=callq_label     
  movzbq %r9b, %r9                   #  3     0xf   4      OPC=movzbq_r64_r8   
  xchgq %r9, %rbx                    #  4     0x13  3      OPC=xchgq_r64_r64   
  retq                               #  5     0x16  1      OPC=retq            
                                                                               
.size target, .-target
