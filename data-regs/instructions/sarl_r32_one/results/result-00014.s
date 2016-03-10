  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  xorl %eax, %eax          #  1     0     2      OPC=xorl_r32_r32     
  cmovnsl %ebx, %eax       #  2     0x2   3      OPC=cmovnsl_r32_r32  
  cltq                     #  3     0x5   2      OPC=cltq             
  sarq $0x1, %rax          #  4     0x7   3      OPC=sarq_r64_one     
  callq .read_cf_into_rbx  #  5     0xa   5      OPC=callq_label      
  xchgl %ebx, %eax         #  6     0xf   2      OPC=xchgl_r32_r32    
  retq                     #  7     0x11  1      OPC=retq             
                                                                      
.size target, .-target
