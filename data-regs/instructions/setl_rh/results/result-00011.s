  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x4, %rax   #  1     0     10     OPC=movq_r64_imm64  
  setnge %ah        #  2     0xa   3      OPC=setnge_rh       
  movswl %ax, %edx  #  3     0xd   3      OPC=movswl_r32_r16  
  sall $0x1, %eax   #  4     0x10  2      OPC=sall_r32_one    
  xchgl %eax, %edx  #  5     0x12  1      OPC=xchgl_r32_eax   
  retq              #  6     0x13  1      OPC=retq            
                                                              
.size target, .-target
