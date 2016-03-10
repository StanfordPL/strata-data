  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  xorq %r8, %r8                     #  1     0     3      OPC=xorq_r64_r64     
  movq $0xffffffffffffffc0, %rbx    #  2     0x3   10     OPC=movq_r64_imm64   
  callq .move_128_064_xmm1_r12_r13  #  3     0xd   5      OPC=callq_label      
  cmovbeq %r12, %rbx                #  4     0x12  4      OPC=cmovbeq_r64_r64  
  retq                              #  5     0x16  1      OPC=retq             
                                                                               
.size target, .-target
