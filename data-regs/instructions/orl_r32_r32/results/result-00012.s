  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP   Bytes  Opcode             
.target:                  #        0     0      OPC=<label>        
  movzbl %cl, %eax        #  1     0     3      OPC=movzbl_r32_r8  
  xchgl %eax, %ebx        #  2     0x3   1      OPC=xchgl_r32_eax  
  sarq %cl, %rbx          #  3     0x4   3      OPC=sarq_r64_cl    
  xchgl %ebx, %ecx        #  4     0x7   2      OPC=xchgl_r32_r32  
  orq %rax, %rbx          #  5     0x9   3      OPC=orq_r64_r64    
  callq .set_szp_for_ebx  #  6     0xc   5      OPC=callq_label    
  retq                    #  7     0x11  1      OPC=retq           
                                                                   
.size target, .-target
