  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movq $0x7, %rbp    #  1     0     10     OPC=movq_r64_imm64  
  movswq %bp, %rbx   #  2     0xa   4      OPC=movswq_r64_r16  
  movzbq %bpl, %rcx  #  3     0xe   4      OPC=movzbq_r64_r8   
  movzbw %ah, %cx    #  4     0x12  4      OPC=movzbw_r16_rh   
  xchgl %ecx, %ebx   #  5     0x16  2      OPC=xchgl_r32_r32   
  retq               #  6     0x18  1      OPC=retq            
                                                               
.size target, .-target
