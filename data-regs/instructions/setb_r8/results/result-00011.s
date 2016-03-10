  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP  Bytes  Opcode              
.target:                          #        0    0      OPC=<label>         
  movq $0xffffffffffffff80, %rbx  #  1     0    10     OPC=movq_r64_imm64  
  rcll $0x1, %ebx                 #  2     0xa  2      OPC=rcll_r32_one    
  retq                            #  3     0xc  1      OPC=retq            
                                                                           
.size target, .-target
