  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  movq $0x3, %rbx                     #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_10_of_ymm1_to_r8b  #  2     0xa   5      OPC=callq_label     
  movb %r8b, %bl                      #  3     0xf   3      OPC=movb_r8_r8      
  salb $0x1, %bh                      #  4     0x12  2      OPC=salb_rh_one     
  retq                                #  5     0x14  1      OPC=retq            
                                                                                
.size target, .-target
