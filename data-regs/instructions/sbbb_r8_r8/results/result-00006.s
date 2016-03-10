  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movb %bl, %ah      #  1     0    2      OPC=movb_rh_r8      
  sbbb %cl, %ah      #  2     0x2  2      OPC=sbbb_rh_r8      
  movsbl %ah, %eax   #  3     0x4  3      OPC=movsbl_r32_rh   
  movslq %eax, %rbx  #  4     0x7  3      OPC=movslq_r64_r32  
  retq               #  5     0xa  1      OPC=retq            
                                                              
.size target, .-target
