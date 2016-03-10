  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffe, %rax  #  1     0     10     OPC=movq_r64_imm64  
  callq .clear_zf                 #  2     0xa   5      OPC=callq_label     
  cwtl                            #  3     0xf   1      OPC=cwtl            
  callq .read_cf_into_rbx         #  4     0x10  5      OPC=callq_label     
  cmoveq %rax, %rbx               #  5     0x15  4      OPC=cmoveq_r64_r64  
  retq                            #  6     0x19  1      OPC=retq            
                                                                            
.size target, .-target
