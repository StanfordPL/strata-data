  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x2, %rbx   #  1     0     10     OPC=movq_r64_imm64  
  movzbl %ah, %eax  #  2     0xa   3      OPC=movzbl_r32_rh   
  xaddb %al, %al    #  3     0xd   3      OPC=xaddb_r8_r8     
  movb %al, %bh     #  4     0x10  2      OPC=movb_rh_r8      
  xchgl %eax, %ebx  #  5     0x12  2      OPC=xchgl_r32_r32   
  retq              #  6     0x14  1      OPC=retq            
                                                              
.size target, .-target
