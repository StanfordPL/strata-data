  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffe, %rdi  #  1     0     10     OPC=movq_r64_imm64  
  movswq %di, %r10                #  2     0xa   4      OPC=movswq_r64_r16  
  rolb $0x1, %r10b                #  3     0xe   3      OPC=rolb_r8_one     
  retq                            #  4     0x11  1      OPC=retq            
                                                                            
.size target, .-target
