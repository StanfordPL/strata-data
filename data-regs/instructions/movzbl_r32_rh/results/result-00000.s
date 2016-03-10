  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x7, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  callq .move_032_016_ebx_r8w_r9w   #  2     0xa   5      OPC=callq_label     
  callq .move_r9b_to_byte_5_of_rbx  #  3     0xf   5      OPC=callq_label     
  movzbw %ah, %bx                   #  4     0x14  4      OPC=movzbw_r16_rh   
  retq                              #  5     0x18  1      OPC=retq            
                                                                              
.size target, .-target
