  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movzbl %ch, %eax         #  1     0     3      OPC=movzbl_r32_rh   
  rolq $0x1, %rax          #  2     0x3   3      OPC=rolq_r64_one    
  callq .read_cf_into_rbx  #  3     0x6   5      OPC=callq_label     
  movswq %cx, %rdi         #  4     0xb   4      OPC=movswq_r64_r16  
  xaddl %ebx, %edi         #  5     0xf   3      OPC=xaddl_r32_r32   
  retq                     #  6     0x12  1      OPC=retq            
                                                                     
.size target, .-target
