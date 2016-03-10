  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movsbw %ah, %dx    #  1     0     4      OPC=movsbw_r16_rh   
  movswq %dx, %rax   #  2     0x4   4      OPC=movswq_r64_r16  
  movsbl %bl, %r8d   #  3     0x8   4      OPC=movsbl_r32_r8   
  movsbq %r8b, %rbx  #  4     0xc   4      OPC=movsbq_r64_r8   
  xchgl %eax, %r8d   #  5     0x10  3      OPC=xchgl_r32_r32   
  movsbq %r8b, %rdx  #  6     0x13  4      OPC=movsbq_r64_r8   
  xorq %rdx, %rbx    #  7     0x17  3      OPC=xorq_r64_r64    
  clc                #  8     0x1a  1      OPC=clc             
  retq               #  9     0x1b  1      OPC=retq            
                                                               
.size target, .-target
