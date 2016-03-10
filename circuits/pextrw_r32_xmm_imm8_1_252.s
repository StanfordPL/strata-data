  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_128_064_xmm1_r12_r13  #  1     0     5      OPC=callq_label      
  xorq %rdi, %rdi                   #  2     0x5   3      OPC=xorq_r64_r64     
  callq .read_of_into_rbx           #  3     0x8   5      OPC=callq_label      
  rcll $0x1, %ebx                   #  4     0xd   2      OPC=rcll_r32_one     
  movw %r13w, %bx                   #  5     0xf   4      OPC=movw_r16_r16     
  xchgw %r13w, %di                  #  6     0x13  4      OPC=xchgw_r16_r16    
  cmovpoq %rdi, %rbx                #  7     0x17  4      OPC=cmovpoq_r64_r64  
  retq                              #  8     0x1b  1      OPC=retq             
                                                                               
.size target, .-target
