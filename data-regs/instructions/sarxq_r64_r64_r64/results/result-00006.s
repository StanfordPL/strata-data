  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq %rdx, %rbx   #  1     0     3      OPC=movq_r64_r64    
  movq %rcx, %rax   #  2     0x3   3      OPC=movq_r64_r64    
  xchgq %rbx, %rax  #  3     0x6   3      OPC=xchgq_r64_r64   
  movswl %dx, %r9d  #  4     0x9   4      OPC=movswl_r32_r16  
  movsbw %r9b, %cx  #  5     0xd   5      OPC=movsbw_r16_r8   
  sarq %cl, %rbx    #  6     0x12  3      OPC=sarq_r64_cl     
  retq              #  7     0x15  1      OPC=retq            
                                                              
.size target, .-target
