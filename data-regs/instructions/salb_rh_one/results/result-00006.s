  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movsbl %ah, %ebp  #  1     0     3      OPC=movsbl_r32_rh   
  xorq %rax, %rax   #  2     0x3   3      OPC=xorq_r64_r64    
  xchgw %bp, %ax    #  3     0x6   3      OPC=xchgw_r16_r16   
  movswq %ax, %rdx  #  4     0x9   4      OPC=movswq_r64_r16  
  shll $0x1, %edx   #  5     0xd   2      OPC=shll_r32_one    
  shlb $0x1, %al    #  6     0xf   2      OPC=shlb_r8_one     
  xchgb %ah, %dl    #  7     0x11  2      OPC=xchgb_r8_rh     
  retq              #  8     0x13  1      OPC=retq            
                                                              
.size target, .-target
