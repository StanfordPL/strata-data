  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP   Bytes  Opcode              
.target:                  #        0     0      OPC=<label>         
  movzwl %cx, %r13d       #  1     0     4      OPC=movzwl_r32_r16  
  xchgl %r13d, %ebx       #  2     0x4   3      OPC=xchgl_r32_r32   
  xchgl %ecx, %ebx        #  3     0x7   2      OPC=xchgl_r32_r32   
  xorq %r13, %rbx         #  4     0x9   3      OPC=xorq_r64_r64    
  callq .set_szp_for_ebx  #  5     0xc   5      OPC=callq_label     
  retq                    #  6     0x11  1      OPC=retq            
                                                                    
.size target, .-target
