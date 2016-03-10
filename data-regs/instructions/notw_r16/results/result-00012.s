  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP  Bytes  Opcode              
.target:                          #        0    0      OPC=<label>         
  movq $0xffffffffffffffff, %r13  #  1     0    10     OPC=movq_r64_imm64  
  xorw %r13w, %bx                 #  2     0xa  4      OPC=xorw_r16_r16    
  retq                            #  3     0xe  1      OPC=retq            
                                                                           
.size target, .-target
