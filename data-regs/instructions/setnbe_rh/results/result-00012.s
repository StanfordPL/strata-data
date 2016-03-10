  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffa, %rax  #  1     0     10     OPC=movq_r64_imm64  
  seta %ah                        #  2     0xa   3      OPC=seta_rh         
  negb %al                        #  3     0xd   2      OPC=negb_r8         
  cltq                            #  4     0xf   2      OPC=cltq            
  retq                            #  5     0x11  1      OPC=retq            
                                                                            
.size target, .-target
