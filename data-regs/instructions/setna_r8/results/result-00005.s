  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  setnbe %r9b                     #  1     0     4      OPC=setnbe_r8       
  movq $0xffffffffffffffe0, %rbx  #  2     0x4   10     OPC=movq_r64_imm64  
  xchgb %r9b, %bl                 #  3     0xe   3      OPC=xchgb_r8_r8     
  shlw $0x1, %bx                  #  4     0x11  3      OPC=shlw_r16_one    
  callq .read_pf_into_rbx         #  5     0x14  5      OPC=callq_label     
  retq                            #  6     0x19  1      OPC=retq            
                                                                            
.size target, .-target
