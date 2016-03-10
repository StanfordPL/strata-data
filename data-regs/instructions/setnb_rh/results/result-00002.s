  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffe0, %rax  #  1     0     10     OPC=movq_r64_imm64  
  rcll $0x1, %eax                 #  2     0xa   2      OPC=rcll_r32_one    
  shll $0x1, %eax                 #  3     0xc   2      OPC=shll_r32_one    
  setnp %ah                       #  4     0xe   3      OPC=setnp_rh        
  cltq                            #  5     0x11  2      OPC=cltq            
  retq                            #  6     0x13  1      OPC=retq            
                                                                            
.size target, .-target
