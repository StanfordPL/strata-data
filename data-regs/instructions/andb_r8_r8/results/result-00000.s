  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  xorl %eax, %eax   #  1     0    2      OPC=xorl_r32_r32    
  xchgb %bl, %ah    #  2     0x2  2      OPC=xchgb_rh_r8     
  cmovlw %ax, %ax   #  3     0x4  4      OPC=cmovlw_r16_r16  
  movzbl %cl, %ebx  #  4     0x8  3      OPC=movzbl_r32_r8   
  andb %ah, %bl     #  5     0xb  2      OPC=andb_r8_rh      
  retq              #  6     0xd  1      OPC=retq            
                                                             
.size target, .-target
