  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movzbl %cl, %edx   #  1     0    3      OPC=movzbl_r32_r8   
  xorb %bl, %dh      #  2     0x3  2      OPC=xorb_rh_r8      
  cmpxchgb %dh, %dh  #  3     0x5  3      OPC=cmpxchgb_rh_rh  
  cmovzl %edx, %ebx  #  4     0x8  3      OPC=cmovzl_r32_r32  
  retq               #  5     0xb  1      OPC=retq            
                                                              
.size target, .-target
