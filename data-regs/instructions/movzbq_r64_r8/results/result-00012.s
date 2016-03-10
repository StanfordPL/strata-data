  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x20, %r10                  #  1     0     10     OPC=movq_r64_imm64  
  movsbl %cl, %edx                  #  2     0xa   3      OPC=movsbl_r32_r8   
  callq .move_016_008_dx_r10b_r11b  #  3     0xd   5      OPC=callq_label     
  movswq %r10w, %rbx                #  4     0x12  4      OPC=movswq_r64_r16  
  retq                              #  5     0x16  1      OPC=retq            
                                                                              
.size target, .-target
