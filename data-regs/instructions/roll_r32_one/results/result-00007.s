  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode             
.target:            #        0     0      OPC=<label>        
  xorl %eax, %eax   #  1     0     2      OPC=xorl_r32_r32   
  movq %rax, %rbp   #  2     0x2   3      OPC=movq_r64_r64   
  xaddl %ebp, %ebx  #  3     0x5   3      OPC=xaddl_r32_r32  
  xaddw %ax, %bp    #  4     0x8   4      OPC=xaddw_r16_r16  
  decb %bpl         #  5     0xc   2      OPC=decb_r8        
  shll $0x1, %ebp   #  6     0xe   2      OPC=shll_r32_one   
  adcl %ebx, %ebx   #  7     0x10  2      OPC=adcl_r32_r32   
  retq              #  8     0x12  1      OPC=retq           
                                                             
.size target, .-target
