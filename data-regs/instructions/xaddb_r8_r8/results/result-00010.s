  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode               
.target:             #        0     0      OPC=<label>          
  movsbl %bl, %r8d   #  1     0     4      OPC=movsbl_r32_r8    
  movsbq %cl, %r12   #  2     0x4   4      OPC=movsbq_r64_r8    
  movsbq %bl, %rcx   #  3     0x8   4      OPC=movsbq_r64_r8    
  popcntw %r8w, %dx  #  4     0xc   6      OPC=popcntw_r16_r16  
  adcb %r12b, %bl    #  5     0x12  3      OPC=adcb_r8_r8       
  retq               #  6     0x15  1      OPC=retq             
                                                                
.size target, .-target
