  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  sall $0x1, %eax    #  1     0     2      OPC=sall_r32_one    
  movsbq %al, %rsi   #  2     0x2   4      OPC=movsbq_r64_r8   
  cmovol %esi, %eax  #  3     0x6   3      OPC=cmovol_r32_r32  
  cwtd               #  4     0x9   2      OPC=cwtd            
  sbbw %dx, %dx      #  5     0xb   3      OPC=sbbw_r16_r16    
  movsbl %dl, %edx   #  6     0xe   3      OPC=movsbl_r32_r8   
  retq               #  7     0x11  1      OPC=retq            
                                                               
.size target, .-target
