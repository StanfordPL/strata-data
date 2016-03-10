  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movzbl %ah, %ecx   #  1     0    3      OPC=movzbl_r32_rh   
  shlb $0x1, %cl     #  2     0x3  2      OPC=shlb_r8_one     
  movslq %ecx, %rdx  #  3     0x5  3      OPC=movslq_r64_r32  
  movb %dl, %ah      #  4     0x8  2      OPC=movb_rh_r8      
  retq               #  5     0xa  1      OPC=retq            
                                                              
.size target, .-target
