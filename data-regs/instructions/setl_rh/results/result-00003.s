  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x7, %r13   #  1     0     10     OPC=movq_r64_imm64  
  movq $0x80, %rax  #  2     0xa   10     OPC=movq_r64_imm64  
  setnge %ah        #  3     0x14  3      OPC=setnge_rh       
  xaddb %r13b, %al  #  4     0x17  4      OPC=xaddb_r8_r8     
  movl %eax, %ecx   #  5     0x1b  2      OPC=movl_r32_r32    
  xchgw %cx, %ax    #  6     0x1d  2      OPC=xchgw_ax_r16    
  retq              #  7     0x1f  1      OPC=retq            
                                                              
.size target, .-target
