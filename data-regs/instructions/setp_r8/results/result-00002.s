  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .read_pf_into_rcx         #  1     0     5      OPC=callq_label     
  movq $0xfffffffffffffffd, %r15  #  2     0x5   10     OPC=movq_r64_imm64  
  rolb $0x1, %cl                  #  3     0xf   2      OPC=rolb_r8_one     
  xaddb %r15b, %cl                #  4     0x11  4      OPC=xaddb_r8_r8     
  callq .read_pf_into_rbx         #  5     0x15  5      OPC=callq_label     
  retq                            #  6     0x1a  1      OPC=retq            
                                                                            
.size target, .-target
