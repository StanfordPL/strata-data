  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x0, %rbx   #  1     0     10     OPC=movq_r64_imm64  
  sets %bh          #  2     0xa   3      OPC=sets_rh         
  xaddb %bh, %bl    #  3     0xd   3      OPC=xaddb_r8_rh     
  movzwl %bx, %ebx  #  4     0x10  3      OPC=movzwl_r32_r16  
  retq              #  5     0x13  1      OPC=retq            
                                                              
.size target, .-target
