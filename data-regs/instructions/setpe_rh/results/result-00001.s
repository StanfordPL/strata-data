  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .read_pf_into_rcx         #  1     0     5      OPC=callq_label     
  movq $0xffffffffffffffff, %r10  #  2     0x5   10     OPC=movq_r64_imm64  
  sall $0x1, %r10d                #  3     0xf   3      OPC=sall_r32_one    
  movzbl %r10b, %eax              #  4     0x12  4      OPC=movzbl_r32_r8   
  salq %cl, %rax                  #  5     0x16  3      OPC=salq_r64_cl     
  retq                            #  6     0x19  1      OPC=retq            
                                                                            
.size target, .-target
