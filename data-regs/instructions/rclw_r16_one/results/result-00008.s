  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x40, %rax  #  1     0     10     OPC=movq_r64_imm64  
  movzwl %bx, %ecx  #  2     0xa   3      OPC=movzwl_r32_r16  
  adcw %cx, %bx     #  3     0xd   3      OPC=adcw_r16_r16    
  orq %rcx, %rax    #  4     0x10  3      OPC=orq_r64_r64     
  adcb %al, %al     #  5     0x13  2      OPC=adcb_r8_r8      
  addw %cx, %ax     #  6     0x15  3      OPC=addw_r16_r16    
  retq              #  7     0x18  1      OPC=retq            
                                                              
.size target, .-target
