  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  xorq %rax, %rax          #  1     0    3      OPC=xorq_r64_r64  
  callq .read_of_into_rcx  #  2     0x3  5      OPC=callq_label   
  xorw %cx, %bx            #  3     0x8  3      OPC=xorw_r16_r16  
  shll $0x1, %ebx          #  4     0xb  2      OPC=shll_r32_one  
  retq                     #  5     0xd  1      OPC=retq          
                                                                  
.size target, .-target
