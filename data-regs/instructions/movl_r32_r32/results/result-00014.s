  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0xfffffffffffffff0, %rbx    #  1     0     10     OPC=movq_r64_imm64  
  callq .move_032_016_ecx_r8w_r9w   #  2     0xa   5      OPC=callq_label     
  callq .move_r9b_to_byte_3_of_rbx  #  3     0xf   5      OPC=callq_label     
  xchgl %ecx, %ebx                  #  4     0x14  2      OPC=xchgl_r32_r32   
  retq                              #  5     0x16  1      OPC=retq            
                                                                              
.size target, .-target
