  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  callq .clear_zf                 #  1     0     5      OPC=callq_label      
  movq $0xfffffffffffffff9, %rax  #  2     0x5   10     OPC=movq_r64_imm64   
  callq .read_zf_into_rbx         #  3     0xf   5      OPC=callq_label      
  popcntq %rax, %rbp              #  4     0x14  5      OPC=popcntq_r64_r64  
  adcb %cl, %bl                   #  5     0x19  2      OPC=adcb_r8_r8       
  retq                            #  6     0x1b  1      OPC=retq             
                                                                             
.size target, .-target
