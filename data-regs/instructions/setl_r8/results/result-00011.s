  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffe, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  setnge %r12b                    #  2     0xa   4      OPC=setnge_r8       
  xchgb %bl, %r12b                #  3     0xe   3      OPC=xchgb_r8_r8     
  retq                            #  4     0x11  1      OPC=retq            
                                                                            
.size target, .-target
