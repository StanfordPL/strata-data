  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP   Bytes  Opcode              
.target:                  #        0     0      OPC=<label>         
  xchgl %ebx, %ecx        #  1     0     2      OPC=xchgl_r32_r32   
  orq %rcx, %rbx          #  2     0x2   3      OPC=orq_r64_r64     
  movq $0x0, %rdx         #  3     0x5   10     OPC=movq_r64_imm64  
  sall $0x1, %edx         #  4     0xf   2      OPC=sall_r32_one    
  callq .set_szp_for_ebx  #  5     0x11  5      OPC=callq_label     
  retq                    #  6     0x16  1      OPC=retq            
                                                                    
.size target, .-target
