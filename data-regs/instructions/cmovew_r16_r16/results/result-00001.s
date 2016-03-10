  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movq $0x6, %rax    #  1     0     10     OPC=movq_r64_imm64  
  movw %cx, %ax      #  2     0xa   3      OPC=movw_r16_r16    
  cmovel %eax, %ebx  #  3     0xd   3      OPC=cmovel_r32_r32  
  retq               #  4     0x10  1      OPC=retq            
                                                               
.size target, .-target
