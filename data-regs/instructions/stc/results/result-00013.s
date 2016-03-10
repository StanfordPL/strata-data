  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffff8, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  movsbl %bl, %r8d                #  2     0xa   4      OPC=movsbl_r32_r8   
  rolb $0x1, %r8b                 #  3     0xe   3      OPC=rolb_r8_one     
  retq                            #  4     0x11  1      OPC=retq            
                                                                            
.size target, .-target
