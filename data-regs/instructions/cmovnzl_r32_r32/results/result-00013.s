  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_064_032_rbx_r8d_r9d   #  1     0     5      OPC=callq_label     
  callq .move_r8b_to_byte_4_of_rbx  #  2     0x5   5      OPC=callq_label     
  xchgl %ebx, %ecx                  #  3     0xa   2      OPC=xchgl_r32_r32   
  cmoveq %rcx, %rbx                 #  4     0xc   4      OPC=cmoveq_r64_r64  
  retq                              #  5     0x10  1      OPC=retq            
                                                                              
.size target, .-target
