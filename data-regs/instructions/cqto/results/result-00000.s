  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movzbl %ah, %edx                #  1     0     3      OPC=movzbl_r32_rh   
  orq %rax, %rdx                  #  2     0x3   3      OPC=orq_r64_r64     
  movq $0xffffffffffffffff, %rcx  #  3     0x6   10     OPC=movq_r64_imm64  
  sarq %cl, %rdx                  #  4     0x10  3      OPC=sarq_r64_cl     
  retq                            #  5     0x13  1      OPC=retq            
                                                                            
.size target, .-target
