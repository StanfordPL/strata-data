  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movzbl %ah, %ecx  #  1     0    3      OPC=movzbl_r32_rh   
  addb %cl, %ch     #  2     0x3  2      OPC=addb_rh_r8      
  xchgb %ah, %bl    #  3     0x5  2      OPC=xchgb_r8_rh     
  movswl %cx, %ebx  #  4     0x7  3      OPC=movswl_r32_r16  
  retq              #  5     0xa  1      OPC=retq            
                                                             
.size target, .-target
