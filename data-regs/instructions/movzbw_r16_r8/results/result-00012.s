  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movzbl %cl, %eax    #  1     0    3      OPC=movzbl_r32_r8   
  movzbl %al, %r13d   #  2     0x3  4      OPC=movzbl_r32_r8   
  movzwl %r13w, %ebx  #  3     0x7  4      OPC=movzwl_r32_r16  
  retq                #  4     0xb  1      OPC=retq            
                                                               
.size target, .-target
