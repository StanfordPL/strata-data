  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movswq %cx, %r14    #  1     0    4      OPC=movswq_r64_r16  
  movzwl %r14w, %ecx  #  2     0x4  4      OPC=movzwl_r32_r16  
  cmovgl %ecx, %ebx   #  3     0x8  3      OPC=cmovgl_r32_r32  
  retq                #  4     0xb  1      OPC=retq            
                                                               
.size target, .-target
