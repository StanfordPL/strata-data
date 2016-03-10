  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x7, %rbx                    #  1     0     10     OPC=movq_r64_imm64  
  subw %bx, %bx                      #  2     0xa   3      OPC=subw_r16_r16    
  callq .move_byte_4_of_ymm1_to_r9b  #  3     0xd   5      OPC=callq_label     
  movzbq %r9b, %r14                  #  4     0x12  4      OPC=movzbq_r64_r8   
  xaddb %bl, %r14b                   #  5     0x16  4      OPC=xaddb_r8_r8     
  retq                               #  6     0x1a  1      OPC=retq            
                                                                               
.size target, .-target
