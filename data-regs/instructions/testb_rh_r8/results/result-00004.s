  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x20, %rcx  #  1     0     10     OPC=movq_r64_imm64  
  xaddb %ch, %ah    #  2     0xa   3      OPC=xaddb_rh_rh     
  xorq %rax, %rax   #  3     0xd   3      OPC=xorq_r64_r64    
  seta %ah          #  4     0x10  3      OPC=seta_rh         
  testb %ch, %bl    #  5     0x13  2      OPC=testb_r8_rh     
  rcll $0x1, %eax   #  6     0x15  2      OPC=rcll_r32_one    
  retq              #  7     0x17  1      OPC=retq            
                                                              
.size target, .-target
