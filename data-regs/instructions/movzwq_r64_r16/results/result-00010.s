  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movq $0x20, %rbx  #  1     0    10     OPC=movq_r64_imm64  
  xchgw %cx, %bx    #  2     0xa  3      OPC=xchgw_r16_r16   
  retq              #  3     0xd  1      OPC=retq            
                                                             
.size target, .-target
