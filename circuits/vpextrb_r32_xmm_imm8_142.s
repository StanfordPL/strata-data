  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  movq $0x2, %r8                      #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_14_of_ymm1_to_r8b  #  2     0xa   5      OPC=callq_label     
  movq %r8, %rbx                      #  3     0xf   3      OPC=movq_r64_r64    
  retq                                #  4     0x12  1      OPC=retq            
                                                                                
.size target, .-target
