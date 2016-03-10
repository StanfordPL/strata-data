  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x3, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  movslq %ecx, %r12                 #  2     0xa   3      OPC=movslq_r64_r32  
  callq .move_016_008_cx_r12b_r13b  #  3     0xd   5      OPC=callq_label     
  xaddl %ebx, %r12d                 #  4     0x12  4      OPC=xaddl_r32_r32   
  retq                              #  5     0x16  1      OPC=retq            
                                                                              
.size target, .-target
