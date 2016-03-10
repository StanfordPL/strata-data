  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  movq $0x0, %rbx                   #  1     0     10     OPC=movq_r64_imm64   
  rcll $0x1, %ebx                   #  2     0xa   2      OPC=rcll_r32_one     
  popcntq %rbx, %rcx                #  3     0xc   5      OPC=popcntq_r64_r64  
  callq .move_byte_3_of_rbx_to_r9b  #  4     0x11  5      OPC=callq_label      
  addw %bx, %bx                     #  5     0x16  3      OPC=addw_r16_r16     
  xchgl %ecx, %ebx                  #  6     0x19  2      OPC=xchgl_r32_r32    
  callq .move_r9b_to_byte_4_of_rbx  #  7     0x1b  5      OPC=callq_label      
  retq                              #  8     0x20  1      OPC=retq             
                                                                               
.size target, .-target
