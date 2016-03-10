  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text               #  Line  RIP   Bytes  Opcode               
.target:             #        0     0      OPC=<label>          
  movq $0x1, %rbx    #  1     0     10     OPC=movq_r64_imm64   
  xchgw %bx, %cx     #  2     0xa   3      OPC=xchgw_r16_r16    
  popcntq %rbx, %r9  #  3     0xd   5      OPC=popcntq_r64_r64  
  movsbl %r9b, %ebx  #  4     0x12  4      OPC=movsbl_r32_r8    
  retq               #  5     0x16  1      OPC=retq             
                                                                
.size target, .-target
