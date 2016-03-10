  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  setng %bl                       #  1     0     3      OPC=setng_r8        
  movq $0xffffffffffffff80, %rax  #  2     0x3   10     OPC=movq_r64_imm64  
  notb %ah                        #  3     0xd   2      OPC=notb_rh         
  xaddb %bl, %ah                  #  4     0xf   3      OPC=xaddb_rh_r8     
  retq                            #  5     0x12  1      OPC=retq            
                                                                            
.size target, .-target
