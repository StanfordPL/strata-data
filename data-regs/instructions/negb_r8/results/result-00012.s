  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movsbl %bl, %esi   #  1     0     3      OPC=movsbl_r32_r8   
  movswq %si, %r13   #  2     0x3   4      OPC=movswq_r64_r16  
  notl %r13d         #  3     0x7   3      OPC=notl_r32        
  negw %si           #  4     0xa   3      OPC=negw_r16        
  movzbl %sil, %ebx  #  5     0xd   4      OPC=movzbl_r32_r8   
  incb %r13b         #  6     0x11  3      OPC=incb_r8         
  retq               #  7     0x14  1      OPC=retq            
                                                               
.size target, .-target
