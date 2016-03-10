  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  movswl %cx, %r15d   #  1     0     4      OPC=movswl_r32_r16  
  movzbq %r15b, %rdx  #  2     0x4   4      OPC=movzbq_r64_r8   
  movzwl %dx, %ebx    #  3     0x8   3      OPC=movzwl_r32_r16  
  salq $0x1, %rbx     #  4     0xb   3      OPC=salq_r64_one    
  movw %cx, %bx       #  5     0xe   3      OPC=movw_r16_r16    
  retq                #  6     0x11  1      OPC=retq            
                                                                
.size target, .-target
