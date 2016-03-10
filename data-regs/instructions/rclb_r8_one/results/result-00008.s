  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  movsbq %bl, %r13    #  1     0    4      OPC=movsbq_r64_r8  
  movsbl %r13b, %ebx  #  2     0x4  4      OPC=movsbl_r32_r8  
  adcb %r13b, %bl     #  3     0x8  3      OPC=adcb_r8_r8     
  retq                #  4     0xb  1      OPC=retq           
                                                              
.size target, .-target
