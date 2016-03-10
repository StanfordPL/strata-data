  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movzbl %ah, %esp  #  1     0    3      OPC=movzbl_r32_rh   
  stc               #  2     0x3  1      OPC=stc             
  setnb %bh         #  3     0x4  3      OPC=setnb_rh        
  movzwl %bx, %edx  #  4     0x7  3      OPC=movzwl_r32_r16  
  addb %dl, %ah     #  5     0xa  2      OPC=addb_rh_r8      
  movzwl %sp, %ebx  #  6     0xc  3      OPC=movzwl_r32_r16  
  retq              #  7     0xf  1      OPC=retq            
                                                             
.size target, .-target
