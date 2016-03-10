  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %rax  #  1     0     10     OPC=movq_r64_imm64  
  setnz %ah                       #  2     0xa   3      OPC=setnz_rh        
  shlb $0x1, %al                  #  3     0xd   2      OPC=shlb_r8_one     
  cltq                            #  4     0xf   2      OPC=cltq            
  retq                            #  5     0x11  1      OPC=retq            
                                                                            
.size target, .-target
