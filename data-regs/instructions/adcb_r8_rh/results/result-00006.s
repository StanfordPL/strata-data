  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode             
.target:             #        0     0      OPC=<label>        
  movzbl %ah, %eax   #  1     0     3      OPC=movzbl_r32_rh  
  movzbq %al, %r10   #  2     0x3   4      OPC=movzbq_r64_r8  
  movsbl %bl, %r9d   #  3     0x7   4      OPC=movsbl_r32_r8  
  movq %r9, %r15     #  4     0xb   3      OPC=movq_r64_r64   
  adcb %r10b, %r15b  #  5     0xe   3      OPC=adcb_r8_r8     
  movw %r15w, %bx    #  6     0x11  4      OPC=movw_r16_r16   
  retq               #  7     0x15  1      OPC=retq           
                                                              
.size target, .-target
