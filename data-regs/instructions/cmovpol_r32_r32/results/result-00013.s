  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  setpo %sil         #  1     0    4      OPC=setpo_r8        
  movsbw %sil, %bp   #  2     0x4  5      OPC=movsbw_r16_r8   
  negw %bp           #  3     0x9  3      OPC=negw_r16        
  cmovbl %ecx, %ebx  #  4     0xc  3      OPC=cmovbl_r32_r32  
  retq               #  5     0xf  1      OPC=retq            
                                                              
.size target, .-target
