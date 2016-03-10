  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffe0, %r14  #  1     0     10     OPC=movq_r64_imm64  
  movzbw %r14b, %bx               #  2     0xa   5      OPC=movzbw_r16_r8   
  xaddb %bh, %cl                  #  3     0xf   3      OPC=xaddb_r8_rh     
  movsbq %cl, %rbx                #  4     0x12  4      OPC=movsbq_r64_r8   
  retq                            #  5     0x16  1      OPC=retq            
                                                                            
.size target, .-target
