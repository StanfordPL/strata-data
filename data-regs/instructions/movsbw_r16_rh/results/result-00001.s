  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0xfffffffffffffffc, %rbx    #  1     0     10     OPC=movq_r64_imm64  
  callq .move_032_016_ebx_r8w_r9w   #  2     0xa   5      OPC=callq_label     
  movzbw %ah, %bx                   #  3     0xf   4      OPC=movzbw_r16_rh   
  callq .move_r8b_to_byte_6_of_rbx  #  4     0x13  5      OPC=callq_label     
  movsbq %bl, %rbx                  #  5     0x18  4      OPC=movsbq_r64_r8   
  retq                              #  6     0x1c  1      OPC=retq            
                                                                              
.size target, .-target
