  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64     
  callq .read_of_into_rbx  #  2     0x3   5      OPC=callq_label      
  xchgw %cx, %bx           #  3     0x8   3      OPC=xchgw_r16_r16    
  popcntq %rbx, %rdx       #  4     0xb   5      OPC=popcntq_r64_r64  
  callq .write_cl_to_sf    #  5     0x10  5      OPC=callq_label      
  movsbq %dl, %rbx         #  6     0x15  4      OPC=movsbq_r64_r8    
  rolw $0x1, %ax           #  7     0x19  3      OPC=rolw_r16_one     
  retq                     #  8     0x1c  1      OPC=retq             
                                                                      
.size target, .-target
