  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  orb %bl, %ah      #  1     0    2      OPC=orb_rh_r8        
  xorl %esp, %esp   #  2     0x2  2      OPC=xorl_r32_r32     
  movsbl %ah, %ecx  #  3     0x4  3      OPC=movsbl_r32_rh    
  xorw %cx, %sp     #  4     0x7  3      OPC=xorw_r16_r16     
  cmovnew %cx, %bx  #  5     0xa  4      OPC=cmovnew_r16_r16  
  retq              #  6     0xe  1      OPC=retq             
                                                              
.size target, .-target
