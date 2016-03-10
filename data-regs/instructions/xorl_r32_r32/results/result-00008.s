  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64   
  xaddl %ecx, %eax         #  2     0x3   3      OPC=xaddl_r32_r32  
  setb %ch                 #  3     0x6   3      OPC=setb_rh        
  cltq                     #  4     0x9   2      OPC=cltq           
  xchgl %ecx, %ebx         #  5     0xb   2      OPC=xchgl_r32_r32  
  xorq %rcx, %rax          #  6     0xd   3      OPC=xorq_r64_r64   
  callq .read_of_into_rbx  #  7     0x10  5      OPC=callq_label    
  xaddl %ebx, %eax         #  8     0x15  3      OPC=xaddl_r32_r32  
  retq                     #  9     0x18  1      OPC=retq           
                                                                    
.size target, .-target
