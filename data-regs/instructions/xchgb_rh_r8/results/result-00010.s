  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  movsbl %ah, %ecx   #  1     0    3      OPC=movsbl_r32_rh  
  movsbq %cl, %rsp   #  2     0x3  4      OPC=movsbq_r64_r8  
  movb %bl, %ah      #  3     0x7  2      OPC=movb_rh_r8     
  movsbq %spl, %rbx  #  4     0x9  4      OPC=movsbq_r64_r8  
  retq               #  5     0xd  1      OPC=retq           
                                                             
.size target, .-target
