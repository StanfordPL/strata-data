  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movzbl %ah, %ebx                #  1     0     3      OPC=movzbl_r32_rh   
  movq $0xfffffffffffffffb, %rax  #  2     0x3   10     OPC=movq_r64_imm64  
  xaddb %bl, %ah                  #  3     0xd   3      OPC=xaddb_rh_r8     
  retq                            #  4     0x10  1      OPC=retq            
                                                                            
.size target, .-target
