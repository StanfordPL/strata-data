  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  cmovel %ecx, %ebx  #  1     0    3      OPC=cmovel_r32_r32  
  movzbl %bh, %edx   #  2     0x3  3      OPC=movzbl_r32_rh   
  xchgb %bh, %dl     #  3     0x6  2      OPC=xchgb_r8_rh     
  retq               #  4     0x8  1      OPC=retq            
                                                              
.size target, .-target
