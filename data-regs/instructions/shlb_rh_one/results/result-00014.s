  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movzbl %ah, %ecx  #  1     0    3      OPC=movzbl_r32_rh   
  movswq %cx, %rdx  #  2     0x3  4      OPC=movswq_r64_r16  
  xaddb %cl, %dl    #  3     0x7  3      OPC=xaddb_r8_r8     
  movb %dl, %ah     #  4     0xa  2      OPC=movb_rh_r8      
  retq              #  5     0xc  1      OPC=retq            
                                                             
.size target, .-target
