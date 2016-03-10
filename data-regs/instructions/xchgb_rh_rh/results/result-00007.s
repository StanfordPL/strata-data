  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movsbl %bh, %edi  #  1     0    3      OPC=movsbl_r32_rh   
  movswq %di, %rcx  #  2     0x3  4      OPC=movswq_r64_r16  
  movb %ah, %bh     #  3     0x7  2      OPC=movb_rh_rh      
  movb %cl, %ah     #  4     0x9  2      OPC=movb_rh_r8      
  retq              #  5     0xb  1      OPC=retq            
                                                             
.size target, .-target
