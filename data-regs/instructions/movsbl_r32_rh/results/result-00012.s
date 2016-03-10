  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode             
.target:             #        0     0      OPC=<label>        
  xorq %rbx, %rbx    #  1     0     3      OPC=xorq_r64_r64   
  movb %ah, %bl      #  2     0x3   2      OPC=movb_r8_rh     
  movsbw %ah, %ax    #  3     0x5   4      OPC=movsbw_r16_rh  
  movsbl %al, %r14d  #  4     0x9   4      OPC=movsbl_r32_r8  
  xchgl %r14d, %ebx  #  5     0xd   3      OPC=xchgl_r32_r32  
  retq               #  6     0x10  1      OPC=retq           
                                                              
.size target, .-target
