  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x20, %rax  #  1     0     10     OPC=movq_r64_imm64  
  setz %al          #  2     0xa   3      OPC=setz_r8         
  movswl %ax, %ecx  #  3     0xd   3      OPC=movswl_r32_r16  
  xchgl %ecx, %eax  #  4     0x10  1      OPC=xchgl_eax_r32   
  xaddb %ah, %cl    #  5     0x11  3      OPC=xaddb_r8_rh     
  retq              #  6     0x14  1      OPC=retq            
                                                              
.size target, .-target
