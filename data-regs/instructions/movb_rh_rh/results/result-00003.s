  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x10, %rax         #  1     0     10     OPC=movq_r64_imm64  
  rolq $0x1, %rax          #  2     0xa   3      OPC=rolq_r64_one    
  callq .read_of_into_rcx  #  3     0xd   5      OPC=callq_label     
  shll $0x1, %ecx          #  4     0x12  2      OPC=shll_r32_one    
  setb %bl                 #  5     0x14  3      OPC=setb_r8         
  movq $0x3, %rax          #  6     0x17  10     OPC=movq_r64_imm64  
  xchgw %ax, %bx           #  7     0x21  2      OPC=xchgw_r16_ax    
  retq                     #  8     0x23  1      OPC=retq            
                                                                     
.size target, .-target
