  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  xorl %eax, %eax          #  1     0     2      OPC=xorl_r32_r32     
  callq .read_cf_into_rbx  #  2     0x2   5      OPC=callq_label      
  xchgl %ecx, %ecx         #  3     0x7   2      OPC=xchgl_r32_r32    
  shlq $0x1, %rcx          #  4     0x9   3      OPC=shlq_r64_one     
  xorb %bh, %cl            #  5     0xc   2      OPC=xorb_r8_rh       
  popcntq %rcx, %rax       #  6     0xe   5      OPC=popcntq_r64_r64  
  movzbl %al, %ebx         #  7     0x13  3      OPC=movzbl_r32_r8    
  retq                     #  8     0x16  1      OPC=retq             
                                                                      
.size target, .-target
