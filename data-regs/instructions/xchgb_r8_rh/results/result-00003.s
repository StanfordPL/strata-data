  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movzbw %ah, %di   #  1     0    4      OPC=movzbw_r16_rh   
  movzbl %bl, %eax  #  2     0x4  3      OPC=movzbl_r32_r8   
  xorb %bl, %ah     #  3     0x7  2      OPC=xorb_rh_r8      
  movswq %di, %rbx  #  4     0x9  4      OPC=movswq_r64_r16  
  retq              #  5     0xd  1      OPC=retq            
                                                             
.size target, .-target
