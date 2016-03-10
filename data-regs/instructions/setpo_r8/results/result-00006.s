  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffe0, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  movzwl %bx, %esi                #  2     0xa   3      OPC=movzwl_r32_r16  
  callq .clear_cf                 #  3     0xd   5      OPC=callq_label     
  setnp %r15b                     #  4     0x12  4      OPC=setnp_r8        
  adcq %rsi, %rbx                 #  5     0x16  3      OPC=adcq_r64_r64    
  xaddb %bl, %r15b                #  6     0x19  4      OPC=xaddb_r8_r8     
  retq                            #  7     0x1d  1      OPC=retq            
                                                                            
.size target, .-target
