  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  movq $0x5, %rax                   #  1     0     10     OPC=movq_r64_imm64    
  callq .move_128_064_xmm1_r12_r13  #  2     0xa   5      OPC=callq_label       
  cmpxchgw %r12w, %r12w             #  3     0xf   5      OPC=cmpxchgw_r16_r16  
  callq .read_zf_into_rbx           #  4     0x14  5      OPC=callq_label       
  xchgq %rax, %rbx                  #  5     0x19  2      OPC=xchgq_r64_rax     
  retq                              #  6     0x1b  1      OPC=retq              
                                                                                
.size target, .-target
