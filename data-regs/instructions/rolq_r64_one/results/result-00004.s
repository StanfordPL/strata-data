  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %bl, %eax  #  1     0    3      OPC=movsbl_r32_r8  
  xorq %rbx, %rax   #  2     0x3  3      OPC=xorq_r64_r64   
  decw %ax          #  3     0x6  3      OPC=decw_r16       
  addq %rax, %rax   #  4     0x9  3      OPC=addq_r64_r64   
  adcq %rbx, %rbx   #  5     0xc  3      OPC=adcq_r64_r64   
  retq              #  6     0xf  1      OPC=retq           
                                                            
.size target, .-target
