  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  movq $0x0, %rbx                     #  1     0     10     OPC=movq_r64_imm64  
  rolw $0x1, %bx                      #  2     0xa   3      OPC=rolw_r16_one    
  callq .move_byte_14_of_ymm1_to_r8b  #  3     0xd   5      OPC=callq_label     
  addb %r8b, %bl                      #  4     0x12  3      OPC=addb_r8_r8      
  retq                                #  5     0x15  1      OPC=retq            
                                                                                
.size target, .-target
