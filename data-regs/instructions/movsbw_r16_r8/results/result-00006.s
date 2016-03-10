  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x7, %rbx   #  1     0     10     OPC=movq_r64_imm64  
  movb %bh, %bl     #  2     0xa   2      OPC=movb_r8_rh      
  notb %bh          #  3     0xc   2      OPC=notb_rh         
  movsbq %cl, %rdi  #  4     0xe   4      OPC=movsbq_r64_r8   
  xchgw %di, %bx    #  5     0x12  4      OPC=xchgw_r16_r16   
  retq              #  6     0x16  1      OPC=retq            
                                                              
.size target, .-target
