  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %cl, %r9d  #  1     0    4      OPC=movsbl_r32_r8  
  xorq %rax, %rax   #  2     0x4  3      OPC=xorq_r64_r64   
  movsbq %bl, %rcx  #  3     0x7  4      OPC=movsbq_r64_r8  
  adcb %r9b, %bl    #  4     0xb  3      OPC=adcb_r8_r8     
  retq              #  5     0xe  1      OPC=retq           
                                                            
.size target, .-target
