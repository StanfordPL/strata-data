  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movsbl %bl, %r14d   #  1     0    4      OPC=movsbl_r32_r8   
  adcb %r14b, %r14b   #  2     0x4  3      OPC=adcb_r8_r8      
  rolb $0x1, %bl      #  3     0x7  2      OPC=rolb_r8_one     
  movzwl %r14w, %ebx  #  4     0x9  4      OPC=movzwl_r32_r16  
  retq                #  5     0xd  1      OPC=retq            
                                                               
.size target, .-target
