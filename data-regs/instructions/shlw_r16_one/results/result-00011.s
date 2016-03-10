  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorq %rax, %rax   #  1     0    3      OPC=xorq_r64_r64   
  movsbl %al, %ecx  #  2     0x3  3      OPC=movsbl_r32_r8  
  xaddw %cx, %bx    #  3     0x6  4      OPC=xaddw_r16_r16  
  addw %cx, %bx     #  4     0xa  3      OPC=addw_r16_r16   
  retq              #  5     0xd  1      OPC=retq           
                                                            
.size target, .-target
